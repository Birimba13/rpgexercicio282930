unit uClasse;

interface

   //Abstração
   //Encapsulamento
  type TPersonagem = class
  private
    Nome: String;
    Vida:Integer;
    Genero:String;
    Nivel:Integer;
    Dano:Integer;
    Defesa:Integer;
  public
    //Getter & Setter
    function getDano: Integer;
    procedure setDano(aDano: Integer);
    function getVida: Integer;
    procedure setVida(aVida: Integer);
    function getNivel: Integer;
    procedure setNivel(aNivel: Integer);
    function getDefesa: Integer;
    procedure setDefesa(aDefesa: Integer);
    constructor Create(aDano,aDefesa, aVida, aNivel:Integer);
  end;

  //Herança
  type TPlayer = class (TPersonagem)
    NickName:String;
    Experiencia:Double;
    function getDano:Integer;
    procedure setDano(ADano:Integer);
  end;

  type TBoss = class (TPersonagem)
    HabilidadeEspecial:String;
    function getDano:Integer;
    procedure setDano(ADano:Integer);
  end;

implementation

uses System.SysUtils;

{  Classe : TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa, aVida, aNivel: Integer);
begin
  Self.Dano := aDano;
  Self.Vida := aVida;
  Self.Nivel := aNivel;
  Self.Defesa := aDefesa;
end;

function TPersonagem.getDano: Integer;
begin
  Result:=Self.Dano+Self.Nivel;
end;

procedure TPersonagem.setDano(aDano: Integer);
begin
  if aDano<1 then begin
    raise Exception.Create('O dano tem que ser maior que zero. TPersonagem.setDano');
  end;
  Self.Dano:=aDano;
end;

function TPersonagem.getVida: Integer;
begin
  Result:=Self.Vida+Self.Nivel;
end;

procedure TPersonagem.setVida(aVida: Integer);
begin
  if aVida<=0 then begin
    raise Exception.Create('A vida tem que ser maior que zero. TPersonagem.setVida');
  end;
  Self.Vida:=aVida;
end;

function TPersonagem.getDefesa: Integer;
begin

end;

procedure TPersonagem.setNivel(aNivel: Integer);
begin
  if aNivel<=0 then begin
    raise Exception.Create('A vida tem que ser maior que zero. TPersonagem.setVida');
  end;
  Self.Vida:=aNivel;
end;

function TPersonagem.getNivel: Integer;
begin
  Result:=Self.Vida+Self.Nivel;
end;

procedure TPersonagem.setDefesa(aDefesa: Integer);
begin
  if aDefesa<=0 then begin
    raise Exception.Create('o nivel tem que ser maior que zero. TPersonagem.setNivel');
  end;
  Self.Nivel:=aDefesa;
end;

{ TBoss }

function TBoss.getDano: Integer;
begin

end;

procedure TBoss.setDano(aDano: Integer);
begin

end;

{ TPlayer }

function TPlayer.getDano: Integer;
begin

end;

procedure TPlayer.setDano(aDano: Integer);
begin

end;

end.
