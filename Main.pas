unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, ExtCtrls, VaClasses, VaComm, Mask, AdvSpin,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, SyncObjs;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    pnlCommStatus: TPanel;
    VaComm1: TVaComm;
    Label6: TLabel;
    pnlVersion: TPanel;
    btnSet: TButton;
    Label14: TLabel;
    edtFrequency: TEdit;
    Label15: TLabel;
    Panel1: TPanel;
    lstCommands: TListBox;
    tmrCommands: TTimer;
    Label2: TLabel;
    lstLines: TListBox;
    IdHTTP1: TIdHTTP;
    Panel3: TPanel;
    tmrScreenUpdates: TTimer;
    IdHTTP2: TIdHTTP;
    Label12: TLabel;
    edtCallsign: TEdit;
    Label3: TLabel;
    pnlInternal: TPanel;
    pnlExternal: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    pnlDate: TPanel;
    Label7: TLabel;
    pnlTime: TPanel;
    Label8: TLabel;
    pnlLat: TPanel;
    Label9: TLabel;
    pnlLon: TPanel;
    Label10: TLabel;
    pnlAlt: TPanel;
    chkRxImplicit: TCheckBox;
    chkRxLowOpt: TCheckBox;
    cmbRxCoding: TComboBox;
    cmbRxSpreading: TComboBox;
    cmbRxBandwidth: TComboBox;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    cmbRxMode: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure VaComm1RxChar(Sender: TObject; Count: Integer);
    procedure btnSetClick(Sender: TObject);
    procedure tmrCommandsTimer(Sender: TObject);
    procedure cmbRxModeCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure ProcessLine(Line: AnsiString);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnSetClick(Sender: TObject);
begin
    lstCommands.Items.Clear;
    lstCommands.Items.Add('~CP' + edtCallsign.Text);

    lstCommands.Items.Add('~LF' + edtFrequency.Text);

    lstCommands.Items.Add('~LS' + cmbRxSpreading.Text);
    if chkRxImplicit.Checked then begin
        lstCommands.Items.Add('~LI1');
    end else begin
        lstCommands.Items.Add('~LI0');
    end;
    lstCommands.Items.Add('~LE' + cmbRxCoding.Text);
    lstCommands.Items.Add('~LB' + IntToStr(cmbRxBandwidth.ItemIndex));
    if chkRxLowOpt.Checked then begin
        lstCommands.Items.Add('~LL1');
    end else begin
        lstCommands.Items.Add('~LL0');
    end;

    lstCommands.Items.Add('~CS');
end;

function DefaultCoding(Mode: Integer): Integer;
begin
    if Mode in [1,4,6,7,8] then begin
        Result := 5;
    end else if Mode = 3 then begin
        Result := 6;
    end else if Mode in [0,2,5] then begin
        Result := 8;
    end else begin
        Result := 5;
    end;

    Result := Result - 5;
end;

function DefaultSpreading(Mode: Integer): Integer;
begin
    if Mode in [1,4,6,8] then begin
        Result := 6;
    end else if Mode in [3,7] then begin
        Result := 7;
    end else if Mode = 2 then begin
        Result := 8;
    end else if Mode in [0,5] then begin
        Result := 11;
    end else begin
        Result := 6;
    end;

    Result := Result - 6;
end;

function DefaultBandwidth(Mode: Integer): Integer;
begin
    if Mode in [0,1,7] then begin
        Result := 3;    // 20K8
    end else if Mode in [5,6] then begin
        Result := 5;    // 41K7
    end else if Mode in [2,8] then begin
        Result := 6;    // 62K5
    end else if Mode in [3,4] then begin
        Result := 8;    // 250K
    end else begin
        Result := 3;    // 20K8
    end;
end;


procedure TForm1.cmbRxModeCloseUp(Sender: TObject);
begin
    if cmbRxMode.ItemIndex > 0 then begin
        cmbRxCoding.ItemIndex := DefaultCoding(cmbRxMode.ItemIndex - 1);
        cmbRxBandwidth.ItemIndex := DefaultBandwidth(cmbRxMode.ItemIndex - 1);
        cmbRxSpreading.ItemIndex := DefaultSpreading(cmbRxMode.ItemIndex - 1);
        chkRxImplicit.Checked := (cmbRxMode.ItemIndex - 1) in [1, 4, 6, 8];
        chkRxLowOpt.Checked := (cmbRxMode.ItemIndex - 1) = 0;
    end;
end;

procedure TForm1.ComboBox1CloseUp(Sender: TObject);
begin
    VaComm1.Close;
    if ComboBox1.ItemIndex >= 0 then begin
        try
            VaComm1.DeviceName := ComboBox1.Text;
            VaComm1.Open;
            pnlCommStatus.Caption := VaComm1.DeviceName + ' open';
            lstCommands.Items.Add('~CV');
        except
            pnlCommStatus.Caption := VaComm1.DeviceName + ' failed to open';
        end;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  reg: TRegistry;
  st: Tstrings;
  i: Integer;
begin
    ComboBox1.Items.Clear;

    reg := TRegistry.Create;
    try
        reg.RootKey := HKEY_LOCAL_MACHINE;
        reg.OpenKeyReadOnly('hardware\devicemap\serialcomm');
        st := TstringList.Create;
        try
            reg.GetValueNames(st);
            for i := 0 to st.Count - 1 do begin
                ComboBox1.Items.Add(reg.Readstring(st.strings[i]));
            end;
        finally
            st.Free;
        end;
        reg.CloseKey;
    finally
        reg.Free;
    end;
end;

function GetString(var Line: AnsiString; Delimiter: String=','): AnsiString;
var
    Position: Integer;
begin
    Position := Pos(Delimiter, string(Line));
    if Position > 0 then begin
        Result := Copy(Line, 1, Position-1);
        Line := Copy(Line, Position+Length(Delimiter), Length(Line));
    end else begin
        Result := Line;
        Line := '';
    end;
end;

procedure TForm1.ProcessLine(Line: AnsiString);
var
    Command: AnsiString;
begin
    Command := UpperCase(GetString(Line, '='));

    if Command = 'VER' then begin
        pnlVersion.Caption := Line;
    end else if Command = 'TEMP0' then begin
        pnlInternal.Caption := Line;
    end else if Command = 'TEMP0' then begin
        pnlExternal.Caption := Line;
    end else if Command = 'GPS' then begin
        pnlDate.Caption := GetString(Line);
        pnlTime.Caption := GetString(Line);
        pnlLat.Caption := GetString(Line);
        pnlLon.Caption := GetString(Line);
        pnlAlt.Caption := GetString(Line);
    end else if Command = 'LORA' then begin
        lstLines.ItemIndex := lstLines.Items.Add(Line);
    end;



//
//    if Command = 'Firmware V' then begin
//        pnlRSSI.Caption := string(Line + 'dBm');
//        if pnlAverageRSSI.Caption = '' then begin
//            pnlAverageRSSI.Caption := string(Line + 'dBm');
//        end else begin
//            pnlAverageRSSI.Caption := IntToStr(Round(StrToFloat(Copy(pnlAverageRSSI.Caption, 1, Length(pnlAverageRSSI.Caption)-3)) * 0.8 + StrToFloat(Line) * 0.2)) + 'dBm';
//        end;
//    end else if Command = 'MESSAGE' then begin
//        lstPackets.Items.Add(Line);
//        lstPackets.ItemIndex := lstPackets.Items.Count-1;
//        pblSentenceCount.Caption := IntToStr(StrToIntdef(pblSentenceCount.Caption, 0) + 1);
//    end else if Command = 'HEX' then begin
//        if (Copy(Line,1,2) = '66') or (Copy(Line,1,2) = 'E6') then begin
//            lstPackets.Items.Add(Line);
//            lstPackets.ItemIndex := lstPackets.Items.Count-1;
//            if Copy(Line,1,2) = 'E6' then begin
//                Line[1] := '6';
//            end;
//        end;
//    end else if Command = 'FREQERR' then begin
//        pnlFrequencyError.Caption := Line + ' kHz';
//    end else if Command = 'PACKETRSSI' then begin
//        pnlPacketRSSI.Caption := Line;
//    end else if Command = 'PACKETSNR' then begin
//        pnlPacketSNR.Caption := Line;
//    end else begin
//        // lstPackets.Items.Add('Unknown: ' + Line);
//    end;
end;

procedure TForm1.tmrCommandsTimer(Sender: TObject);
begin
    if lstCommands.Items.Count > 0 then begin
        VaComm1.WriteText(lstCommands.Items[0] + #13);
        lstCommands.Items.Delete(0);
    end;
end;

procedure TForm1.VaComm1RxChar(Sender: TObject; Count: Integer);
const
    Buffer: AnsiString = '';
var
    i: Integer;
    Character: AnsiChar;
begin
    for i := 1 to Count do begin
        VaComm1.ReadChar(Character);

        try
            if (Character = Chr(10)) or (Character = Chr(13)) then begin
                if Length(Buffer) > 0 then begin
                    ProcessLine(Buffer);
                    Buffer := '';
                end;
            end else begin
                if Length(Buffer) < 1000 then begin
                    Buffer := Buffer + Character;
                end;
            end;
        except
        end;
    end;
end;

end.
