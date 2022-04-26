unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, ExtCtrls, VaClasses, VaComm, Mask, AdvSpin,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, SyncObjs,
  ComCtrls, CheckLst, StrUtils;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    pnlCommStatus: TPanel;
    VaComm1: TVaComm;
    Label6: TLabel;
    pnlVersion: TPanel;
    lstCommands: TListBox;
    tmrCommands: TTimer;
    Panel3: TPanel;
    tmrScreenUpdates: TTimer;
    Label17: TLabel;
    pnlProduct: TPanel;
    pnlDescription: TPanel;
    Label18: TLabel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LoRa: TTabSheet;
    RTTY: TTabSheet;
    APRS: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    pnlTime: TPanel;
    pnlLat: TPanel;
    pnlLon: TPanel;
    pnlAlt: TPanel;
    IdHTTP1: TIdHTTP;
    IdHTTP2: TIdHTTP;
    TabSheet3: TTabSheet;
    lstLines: TListBox;
    Label12: TLabel;
    edtCallsign: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    edtFrequency: TEdit;
    cmbRxMode: TComboBox;
    btnSet: TButton;
    Button1: TButton;
    Button2: TButton;
    btnSetAPRS: TButton;
    Button4: TButton;
    pnlFlexTrak: TPanel;
    Label16: TLabel;
    cmbRxSpreading: TComboBox;
    Label13: TLabel;
    cmbRxCoding: TComboBox;
    chkRxImplicit: TCheckBox;
    chkRxLowOpt: TCheckBox;
    cmbRxBandwidth: TComboBox;
    Label11: TLabel;
    Label3: TLabel;
    edtFields: TEdit;
    lstFields: TCheckListBox;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    edtFlightModeAltitude: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtCutdownAltitude: TEdit;
    edtCutdownPeriod: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Button5: TButton;
    Label24: TLabel;
    edtCycleCount: TEdit;
    lblCallingCount2: TLabel;
    edtSlot: TEdit;
    Label26: TLabel;
    lblRepeat1: TLabel;
    edtRepeat1: TEdit;
    lblRepeat2: TLabel;
    edtRepeat2: TEdit;
    lblCallingCount1: TLabel;
    edtCallingCount: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    edtRTTYFrequency: TEdit;
    Label37: TLabel;
    edtRTTYBaudRate: TEdit;
    TabSheet6: TTabSheet;
    chkUplink: TCheckBox;
    Label33: TLabel;
    edtUplinkCode: TEdit;
    Label34: TLabel;
    edtCDA: TEdit;
    edtPayloadMass: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label43: TLabel;
    edtLandingAltitude: TEdit;
    Label44: TLabel;
    Button6: TButton;
    Label45: TLabel;
    edtRTTYAudioShift: TEdit;
    Label46: TLabel;
    Label38: TLabel;
    edtRTTYCount: TEdit;
    Label39: TLabel;
    edtRTTYEvery: TEdit;
    Label40: TLabel;
    edtRTTYPreamble: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    pnlLatest: TPanel;
    Label5: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    edtAPRSFrequency: TEdit;
    edtAPRSCallsign: TEdit;
    edtAPRSSSID: TEdit;
    edtPathAltitude: TEdit;
    edtAPRSInterval: TEdit;
    edtTelemetry: TEdit;
    Memo1: TMemo;
    Label50: TLabel;
    chkAPRSWide: TCheckBox;
    Label54: TLabel;
    Label55: TLabel;
    edtAPRSRandom: TEdit;
    Label56: TLabel;
    chkPreEmphasis: TCheckBox;
    Label25: TLabel;
    pnlBattery: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    pnlInternal: TPanel;
    Label29: TLabel;
    Label57: TLabel;
    pnlExternal: TPanel;
    Label58: TLabel;
    cmbGPSMode: TComboBox;
    Label59: TLabel;
    Panel1: TPanel;
    Label60: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure VaComm1RxChar(Sender: TObject; Count: Integer);
    procedure btnSetClick(Sender: TObject);
    procedure tmrCommandsTimer(Sender: TObject);
    procedure cmbRxModeCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LoRaShow(Sender: TObject);
    procedure edtFieldsChange(Sender: TObject);
    procedure lstFieldsClickCheck(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSetAPRSClick(Sender: TObject);
  private
    { Private declarations }
    FlexTrack: Boolean;
    procedure ProcessLine(Line: AnsiString);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSetAPRSClick(Sender: TObject);
begin
    lstCommands.Items.Clear;

    lstCommands.Items.Add('~AP' + edtAPRSCallsign.Text);

    lstCommands.Items.Add('~AF' + edtAPRSFrequency.Text);

    lstCommands.Items.Add('~AS' + edtAPRSSSID.Text);

    lstCommands.Items.Add('~AA' + edtPathAltitude.Text);

    lstCommands.Items.Add('~AW' + ifthen(chkAPRSWide.Checked, '1', '0'));

    lstCommands.Items.Add('~AI' + edtAPRSInterval.Text);

    lstCommands.Items.Add('~AR' + edtAPRSRandom.Text);

    lstCommands.Items.Add('~AM' + ifthen(chkPreEmphasis.Checked, '1', '0'));

    lstCommands.Items.Add('~ATR' + edtTelemetry.Text);


    lstCommands.Items.Add('~CS');
end;

procedure TForm1.btnSetClick(Sender: TObject);
begin
    lstCommands.Items.Clear;

    lstCommands.Items.Add('~CP' + edtCallsign.Text);

    lstCommands.Items.Add('~CF' + edtFields.Text);

    lstCommands.Items.Add('~GF' + IntToStr(StrToIntDef(edtFlightModeAltitude.Text, 2000)));

    if cmbGPSMode.Enabled then begin
        if cmbGPSMode.ItemIndex >= 0 then begin
            lstCommands.Items.Add('~GM' + IntToStr(cmbGPSMode.ItemIndex));
        end;
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


procedure TForm1.Button1Click(Sender: TObject);
begin
    if cmbRxMode.ItemIndex >= 0 then begin
        lstCommands.Items.Clear;

        // Basic LoRa Settings
        lstCommands.Items.Add('~LF' + edtFrequency.Text);

        if FlexTrack then begin
            // Just send mode
            lstCommands.Items.Add('~LM' + IntToStr(cmbRxMode.ItemIndex));
        end else begin
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
        end;

        // TDM
        lstCommands.Items.Add('~LT' + IntToStr(StrToIntDef(edtCycleCount.Text, 0)));
        lstCommands.Items.Add('~LO' + IntToStr(StrToIntDef(edtSlot.Text, 0)));

        // TDM Repeating
        if FlexTrack then begin
            lstCommands.Items.Add('~L1' + IntToStr(StrToIntDef(edtRepeat1.Text, -1)));
            lstCommands.Items.Add('~L2' + IntToStr(StrToIntDef(edtRepeat1.Text, -1)));
        end;

        // Calling Mode
        if FlexTrack then begin
            lstCommands.Items.Add('~LC' + IntToStr(StrToIntDef(edtCallingCount.Text, 0)));
        end;

        lstCommands.Items.Add('~CS');
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    lstCommands.Items.Clear;


    lstCommands.Items.Add('~RF' + edtRTTYFrequency.Text);

    lstCommands.Items.Add('~RB' + edtRTTYBaudRate.Text);

    lstCommands.Items.Add('~RA' + edtRTTYAudioShift.Text);

    lstCommands.Items.Add('~RC' + edtRTTYCount.Text);

    lstCommands.Items.Add('~RE' + edtRTTYEvery.Text);

    lstCommands.Items.Add('~RP' + edtRTTYPreamble.Text);

    lstCommands.Items.Add('~CS');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    if chkUplink.Checked then begin
        lstCommands.Items.Add('~LK1');
    end else begin
        lstCommands.Items.Add('~LK0');
    end;
    lstCommands.Items.Add('~LU' + edtUplinkCode.Text);

    lstCommands.Items.Add('~CS');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    lstCommands.Items.Clear;

    lstCommands.Items.Add('~CA' + IntToStr(StrToIntDef(edtCutdownAltitude.Text, 0)));

    lstCommands.Items.Add('~CT' + IntToStr(StrToIntDef(edtCutdownPeriod.Text, 5000)));

    lstCommands.Items.Add('~CS');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    lstCommands.Items.Add('~PC' + edtCDA.Text);

    lstCommands.Items.Add('~PW' + edtPayloadMass.Text);

    lstCommands.Items.Add('~PL' + edtLandingAltitude.Text);

    lstCommands.Items.Add('~CS');
end;

procedure TForm1.cmbRxModeCloseUp(Sender: TObject);
begin
    if cmbRxMode.ItemIndex > 0 then begin
        cmbRxCoding.ItemIndex := DefaultCoding(cmbRxMode.ItemIndex);
        cmbRxBandwidth.ItemIndex := DefaultBandwidth(cmbRxMode.ItemIndex);
        cmbRxSpreading.ItemIndex := DefaultSpreading(cmbRxMode.ItemIndex);
        chkRxImplicit.Checked := (cmbRxMode.ItemIndex) in [1, 4, 6, 8];
        chkRxLowOpt.Checked := (cmbRxMode.ItemIndex) = 0;
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
            lstCommands.Items.Add('~CC');
            lstCommands.Items.Add('~CD');
            lstCommands.Items.Add('~CE');
            lstCommands.Items.Add('~CV');
            lstCommands.Items.Add('~CC');
            lstCommands.Items.Add('~CD');
            lstCommands.Items.Add('~CE');
            lstCommands.Items.Add('~CV');
        except
            pnlCommStatus.Caption := VaComm1.DeviceName + ' failed to open';
        end;
    end;
end;

function FieldCharacter(Index: Integer): String;
begin
    if Index <= 9 then begin
        Result := Chr(Index + Ord('0'));
    end else begin
        Result := Chr(Index + Ord('A') - 10);
    end;

end;
procedure TForm1.edtFieldsChange(Sender: TObject);
var
    i: Integer;
begin
    if Self.ActiveControl <> lstFields then begin
        for i := 0 to lstFields.Items.Count-1 do begin
            lstFields.Checked[i] := Pos(FieldCharacter(i), edtFields.Text) > 0;
        end;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  reg: TRegistry;
  st: Tstrings;
  i: Integer;
begin
    PageControl1.ActivePageIndex := 0;

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

procedure TForm1.LoRaShow(Sender: TObject);
begin
    cmbRxSpreading.Enabled := not FlexTrack;
    cmbRxCoding.Enabled := not FlexTrack;
    cmbRxBandwidth.Enabled := not FlexTrack;
    chkRxImplicit.Enabled := not FlexTrack;
    chkRxLowOpt.Enabled := not FlexTrack;
end;

procedure TForm1.lstFieldsClickCheck(Sender: TObject);
var
    i: Integer;
    Temp: String;
begin
    Temp := '';

    for i := 0 to lstFields.Items.Count-1 do begin
        if lstFields.Checked[i] then begin
            Temp := Temp + FieldCharacter(i);
        end;
    end;

    edtFields.Text := Temp;
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
    Value: Integer;
begin
    Command := UpperCase(GetString(Line, '='));

    if Command = 'VER' then begin
        pnlVersion.Caption := Line;
        if pnlProduct.Caption = '' then pnlProduct.Caption := 'FlexTrak';
        if pnlDescription.Caption = '' then pnlDescription.Caption := 'FlexTrak AVR';
        cmbGPSMode.Enabled := Pos('B2Space', pnlDescription.Caption) > 0;
        Label59.Enabled := cmbGPSMode.Enabled;
    end else if Command = 'PROD' then begin
        pnlProduct.Caption := Line;
        FlexTrack := Pos('FlexTrack', Line) > 0;
        RTTY.TabVisible := FlexTrack;
        APRS.TabVisible := not FlexTrack;
        lblRepeat1.Visible := FlexTrack;
        lblRepeat2.Visible := FlexTrack;
        edtRepeat1.Visible := FlexTrack;
        edtRepeat2.Visible := FlexTrack;
        edtCallingCount.Visible := FlexTrack;
        lblCallingCount1.Visible := FlexTrack;
        lblCallingCount2.Visible := FlexTrack;
    end else if Command = 'DESC' then begin
        pnlDescription.Caption := Line;
        cmbGPSMode.Enabled := Pos('B2Space', Line) > 0;
        Label59.Enabled := cmbGPSMode.Enabled;
    end else if Command = 'GPS' then begin
        GetString(Line);
        pnlTime.Caption := GetString(Line);
        pnlLat.Caption := GetString(Line);
        pnlLon.Caption := GetString(Line);
        pnlAlt.Caption := GetString(Line);
    end else if (Command = 'LORA') or
                (Command = 'RTTY') or
                (Command = 'APRS') then begin
        lstLines.ItemIndex := lstLines.Items.Add(Command + ': ' + Line);
        pnlLatest.Caption := Line;
        GetString(Line);
        GetString(Line);
        pnlTime.Caption := GetString(Line);
        pnlLat.Caption := GetString(Line);
        pnlLon.Caption := GetString(Line);
        pnlAlt.Caption := GetString(Line);
    end else if Command = 'BATT' then begin
        try
            pnlBattery.Caption := FormatFloat('0.0', StrToFloat(GetString(Line)) / 1000);
        finally

        end;
    end else if Command = 'INT' then begin
        pnlInternal.Caption := GetString(Line);
    end else if Command = 'EXT' then begin
        pnlExternal.Caption := GetString(Line);
    end else if Command = 'CP' then begin
        edtCallsign.Text := Line;
    end else if Command = 'CF' then begin
        edtFields.Text := Line;
    end else if Command = 'GF' then begin
        edtFlightModeAltitude.Text := Line;
    end else if Command = 'GM' then begin
        Value := StrToIntDef(Line, -1);
        cmbGPSMode.ItemIndex := Value
    end else if Command = 'GM' then begin
        edtFlightModeAltitude.Text := Line;
    end else if Command = 'CA' then begin
        edtCutdownAltitude.Text := Line;
    end else if Command = 'CT' then begin
        edtCutdownPeriod.Text := Line;
    end else if Command = 'LF' then begin
        edtFrequency.Text := Line;
    end else if Command = 'LM' then begin
        cmbRxMode.ItemIndex := StrToIntDef(Line, -1);
    end else if Command = 'LT' then begin
        edtCycleCount.Text := Line;
    end else if Command = 'LO' then begin
        edtSlot.Text := Line;
    end else if Command = 'L1' then begin
        edtRepeat1.Text := Line;
    end else if Command = 'L2' then begin
        edtRepeat2.Text := Line;
    end else if Command = 'LC' then begin
        edtCallingCount.Text := Line;
    end else if Command = 'LK' then begin
        chkUplink.Checked := StrToIntDef(Line,0) <> 0;
    end else if Command = 'LU' then begin
        edtUplinkCode.Text := Line;
    end else if Command = 'PC' then begin
        edtCDA.Text := Line;
    end else if Command = 'PW' then begin
        edtPayloadMass.Text := Line;
    end else if Command = 'PL' then begin
        edtLandingAltitude.Text := Line;
    end else if Command = 'RF' then begin
        edtRTTYFrequency.Text := Line;
    end else if Command = 'RB' then begin
        edtRTTYBaudRate.Text := Line;
    end else if Command = 'RA' then begin
        edtRTTYAudioShift.Text := Line;
    end else if Command = 'RC' then begin
        edtRTTYCount.Text := Line;
    end else if Command = 'RE' then begin
        edtRTTYEvery.Text := Line;
    end else if Command = 'RP' then begin
        edtRTTYPreamble.Text := Line;
    end else if Command = 'AF' then begin
        edtAPRSFrequency.Text := Line;
    end else if Command = 'AP' then begin
        edtAPRSCallsign.Text := Line;
    end else if Command = 'AS' then begin
        edtAPRSSSID.Text := Line;
    end else if Command = 'AA' then begin
        edtPathAltitude.Text := Line;
    end else if Command = 'AW' then begin
        chkAPRSWide.Checked := StrToIntDef(Line,0) <> 0;
    end else if Command = 'AI' then begin
        edtAPRSInterval.Text := Line;
    end else if Command = 'AR' then begin
        edtAPRSRandom.Text := Line;
    end else if Command = 'AM' then begin
        chkPreEmphasis.Checked := StrToIntDef(Line,0) <> 0;
    end else if Command = 'AT' then begin
        edtTelemetry.Text := Line;
    end;
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
