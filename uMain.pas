unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Dano: TEdit;
    Vida: TEdit;
    Nivel: TEdit;
    Defesa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses uClasse;

procedure TForm1.Button1Click(Sender: TObject);
var npcpersonagem : TPersonagem;
    chefao : TBoss;
    player : TBoss;

begin
  npcpersonagem:=TPersonagem.Create(0,0,0,0);
  npcpersonagem.setDano(10);
  npcpersonagem.setVida(10);
  npcpersonagem.setNivel(10);
  npcpersonagem.setDefesa(10);
  Dano.Text:=npcpersonagem.getDano.ToString;
  Vida.Text:=npcpersonagem.getVida.ToString;
  Nivel.Text:=npcpersonagem.getNivel.ToString;
  Defesa.Text:=npcpersonagem.getDefesa.ToString;
end;

end.
