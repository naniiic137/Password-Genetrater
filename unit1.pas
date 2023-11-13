unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  ExtCtrls, Buttons, math;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    TrackBar1: TTrackBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation



function rand(n:integer;x:string):string;
var
  low,number,symbol,all,ch:string;
  i:integer;
begin
   low:='azertyuiopqsdfghjklmwxcvbn';
   number:='1234567890';
   symbol:='&"(-_=+-*/.!:;,?#';
   all:='';
   i:=1;
   while i<=length(x) do
   begin
   case strtoint(x[i]) of
   1:all:=all+low;
   2:all:=all+upcase(low);
   3:all:=all+number;
   4:all:=all+symbol;
   end;
   i:=i+1;
   end;

   //gen
   ch:='';
   for i:=1 to n do
   begin
     ch:=ch+all[randomrange(1,length(all))];
     end;
   rand:=ch;
end;
function booltostr(bool:boolean):byte;
var
  x:byte;
begin
   if bool = true then
   x:=1
   else
   x:=0;

   booltostr:= x;
end;

{$R *.lfm}

{ TForm1 }

procedure TForm1.TrackBar1Change(Sender: TObject);
var
    x:string;
begin
     x:=inttostr(booltostr(checkbox1.Checked)*1)+inttostr(booltostr(checkbox2.Checked)*2)+inttostr(booltostr(checkbox3.Checked)*3)+inttostr(booltostr(checkbox4.Checked)*4);
   edit1.text:=rand(trackbar1.Position,x);
   label1.Caption:=inttostr(trackbar1.Position);
   end;

procedure TForm1.Button1Click(Sender: TObject);

begin

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
    x:string;
begin
    x:=inttostr(booltostr(checkbox1.Checked)*1)+inttostr(booltostr(checkbox2.Checked)*2)+inttostr(booltostr(checkbox3.Checked)*3)+inttostr(booltostr(checkbox4.Checked)*4);
edit1.text:=rand(trackbar1.Position,x);
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin

end;

end.

