unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.StdCtrls, Math;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Кнопка сложения (+)
procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
  end
  else
  begin
    Label1.Caption := FloatToStr(StrToFloat(Edit1.Text) + StrToFloat(Edit2.Text));
  end;
end;

// Кнопка вычитания (-)
procedure TForm1.Button2Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
  end
  else
  begin
    Label1.Caption := FloatToStr(StrToFloat(Edit1.Text) - StrToFloat(Edit2.Text));
  end;
end;

// Кнопка умножения (*)
procedure TForm1.Button3Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
  end
  else
  begin
    Label1.Caption := FloatToStr(StrToFloat(Edit1.Text) * StrToFloat(Edit2.Text));
  end;
end;

// Кнопка деления (/)
procedure TForm1.Button4Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
  end
  else
  begin
    if CheckBox1.Checked then
    begin
      if StrToInt(Edit2.Text) = 0 then
        ShowMessage('Ошибка: деление на ноль')
      else
        Label1.Caption := IntToStr(StrToInt(Edit1.Text) div StrToInt(Edit2.Text));
    end
    else
    begin
      if StrToFloat(Edit2.Text) = 0 then
        ShowMessage('Ошибка: деление на ноль')
      else
        Label1.Caption := FloatToStr(StrToFloat(Edit1.Text) / StrToFloat(Edit2.Text));
    end;
  end;
end;

// Кнопка квадрата (x²)
procedure TForm1.Button5Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Ошибка: введите число');
  end
  else
  begin
    Label1.Caption := FloatToStr(Sqr(StrToFloat(Edit1.Text)));
  end;
end;

// Кнопка корня квадратного (√)
procedure TForm1.Button6Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Ошибка: введите число');
  end
  else
  begin
    if StrToFloat(Edit1.Text) < 0 then
      ShowMessage('Ошибка: корень из отрицательного числа')
    else
      Label1.Caption := FloatToStr(Sqrt(StrToFloat(Edit1.Text)));
  end;
end;

// Кнопка возведения в степень
procedure TForm1.Button7Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
  end
  else
  begin
    Label1.Caption := FloatToStr(Power(StrToFloat(Edit1.Text), StrToFloat(Edit2.Text)));
  end;
end;

// Кнопка очистки
procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Label1.Caption := 'Результат';
  CheckBox1.Checked := False;
end;

end.

