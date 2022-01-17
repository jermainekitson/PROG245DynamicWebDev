<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First_Web_Form.aspx.cs" Inherits="Calculator.First_Web_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Calculator</title>
    <style>
        .MostButtonStyle
        {
            width:48px;
            height:48px;
            margin:1px;
        }
        .SomeButtonStyle
        {
            width:102px;
            height:48px;
            margin:1px;
        }
        .text-right 
        {
            text-align: right;
        }
     </style>
</head>

<body style="position: relative">
    <form id="form1" runat="server">
        <div>
        
        <div>
            
            <asp:TextBox  runat="server" class="text-right" style="  position: relative; top: -1px; left: 0px; width: 206px; height: 67px;" ID="txtDisplay" ReadOnly="True" Font-Bold="True" Font-Size="Large">0</asp:TextBox>
        </div>
        <div> 
            <asp:Button ID="btnAC" CssClass="SomeButtonStyle" runat="server" Text="AC"  BackColor="#808080" style="position: relative" OnClick="btnAC_Click" />
            <asp:Button ID="btnC" CssClass="MostButtonStyle" runat="server" Text="C" BackColor= "#808080" style="position: relative" OnClick="btnC_Click" />
            <asp:Button ID="btnPlus" CssClass="MostButtonStyle" runat="server" Text="+" Backcolor="#ff9933" style="position: relative" OnClick="btnPlus_Click" />
        </div>
         <div> 
            <asp:Button ID="btn7" CssClass="MostButtonStyle" runat="server" Text="7" BackColor= "#808080" style="position: relative" OnClick="btn7_Click" />
            <asp:Button ID="bt8" CssClass="MostButtonStyle" runat="server" Text="8" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btn9" CssClass="MostButtonStyle" runat="server" Text="9" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btnMinus" CssClass="MostButtonStyle" runat="server" Text="-" Backcolor="#ff9933" style="position: relative" OnClick="btnPlus_Click" />
        </div>
         <div> 
            <asp:Button ID="btn4" CssClass="MostButtonStyle" runat="server" Text="4" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btn5" CssClass="MostButtonStyle" runat="server" Text="5" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btn6" CssClass="MostButtonStyle" runat="server" Text="6" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btnMultiply" CssClass="MostButtonStyle" runat="server" Text="*" Backcolor="#ff9933" style="position: relative" OnClick="btnPlus_Click" />
        </div>
           <div> 
            <asp:Button ID="btn1" CssClass="MostButtonStyle" runat="server" Text="1" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btn2" CssClass="MostButtonStyle" runat="server" Text="2" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btn3" CssClass="MostButtonStyle" runat="server" Text="3" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btnDivide" CssClass="MostButtonStyle" runat="server" Text="/" Backcolor="#ff9933" style="position: relative" OnClick="btnPlus_Click" />
        </div>
        <div> 
            <asp:Button ID="btnZero" CssClass="SomeButtonStyle" runat="server" Text="0" BackColor= "#808080" style="position: relative" OnClick="btn7_Click"/>
            <asp:Button ID="btnDecimal" CssClass="MostButtonStyle" runat="server" Text="." BackColor= "#808080" style="position: relative" OnClick="btnDecimal_Click" />
            <asp:Button ID="btnEqual" CssClass="MostButtonStyle" runat="server" Text="=" Backcolor="#ff9933" style="position: relative" OnClick="btnEqual_Click" />
        </div>
            
           </div>
      
    </form>
</body>
</html>

