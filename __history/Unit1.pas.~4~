unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label3: TLabel;
    Edit3: TEdit;
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

// Кнопка сложения
procedure TForm1.Button1Click(Sender: TObject);
var
  num1, num2: Double;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
    Exit;
  end;
  try
    num1 := StrToFloat(Edit1.Text);
    num2 := StrToFloat(Edit2.Text);
    Edit3.Text := FloatToStr(num1 + num2);
  except
    ShowMessage('Ошибка: введите корректные числа');
  end;
end;

// Кнопка вычитания
procedure TForm1.Button2Click(Sender: TObject);
var
  num1, num2: Double;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
    Exit;
  end;
  try
    num1 := StrToFloat(Edit1.Text);
    num2 := StrToFloat(Edit2.Text);
    Edit3.Text := FloatToStr(num1 - num2);
  except
    ShowMessage('Ошибка: введите корректные числа');
  end;
end;

// Кнопка умножения
procedure TForm1.Button3Click(Sender: TObject);
var
  num1, num2: Double;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
    Exit;
  end;
  try
    num1 := StrToFloat(Edit1.Text);
    num2 := StrToFloat(Edit2.Text);
    Edit3.Text := FloatToStr(num1 * num2);
  except
    ShowMessage('Ошибка: введите корректные числа');
  end;
end;

// Кнопка деления
procedure TForm1.Button4Click(Sender: TObject);
var
  num1, num2: Double;
  intNum1, intNum2: Integer;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
    Exit;
  end;
  try
    if CheckBox1.Checked then
    begin
      intNum1 := StrToInt(Edit1.Text);
      intNum2 := StrToInt(Edit2.Text);
      if intNum2 = 0 then
      begin
        ShowMessage('Ошибка: деление на ноль');
        Exit;
      end;
      Edit3.Text := IntToStr(intNum1 div intNum2);
    end
    else
    begin
      num1 := StrToFloat(Edit1.Text);
      num2 := StrToFloat(Edit2.Text);
      if num2 = 0 then
      begin
        ShowMessage('Ошибка: деление на ноль');
        Exit;
      end;
      Edit3.Text := FloatToStr(num1 / num2);
    end;
  except
    ShowMessage('Ошибка: введите корректные числа');
  end;
end;

// Кнопка квадрата
procedure TForm1.Button5Click(Sender: TObject);
var
  num1: Double;
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Ошибка: введите число');
    Exit;
  end;
  try
    num1 := StrToFloat(Edit1.Text);
    Edit3.Text := FloatToStr(Sqr(num1));
  except
    ShowMessage('Ошибка: введите корректное число');
  end;
end;

// Кнопка корня квадратного
procedure TForm1.Button6Click(Sender: TObject);
var
  num1: Double;
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Ошибка: введите число');
    Exit;
  end;
  try
    num1 := StrToFloat(Edit1.Text);
    if num1 < 0 then
    begin
      ShowMessage('Ошибка: корень из отрицательного числа');
      Exit;
    end;
    Edit3.Text := FloatToStr(Sqrt(num1));
  except
    ShowMessage('Ошибка: введите корректное число');
  end;
end;

// Кнопка возведения в степень
procedure TForm1.Button7Click(Sender: TObject);
var
  num1, num2: Double;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Ошибка: введите оба числа');
    Exit;
  end;
  try
    num1 := StrToFloat(Edit1.Text);
    num2 := StrToFloat(Edit2.Text);
    Edit3.Text := FloatToStr(Power(num1, num2));
  except
    ShowMessage('Ошибка: введите корректные числа');
  end;
end;

// Кнопка очистки
procedure TForm1.Button8Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Label3.Caption := 'Результат';
  CheckBox1.Checked := False;
end;

end.

