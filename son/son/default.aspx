<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="son._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body style="background-color:burlywood">
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;<strong><asp:Label ID="LABEL" runat="server" Text="ÜRÜNKOD"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TBXURUNKOD" runat="server"></asp:TextBox>
            </strong>.<strong><br />
            <br />
            </strong>&nbsp;<strong><asp:Label ID="Label1" runat="server" Text="BRAND"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TBXBRAND" runat="server" Height="22px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="MODEL"></asp:Label>
&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TBXMODEL" runat="server" Height="23px"></asp:TextBox>
            </strong>
        </div>
        <p class="auto-style1">
            <strong>
            <asp:Label ID="Label3" runat="server" Text="CAPACİTY"></asp:Label>
            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TBXCAPACITY" runat="server" Height="23px"></asp:TextBox>
            </strong>
        </p>
        <p class="auto-style1">
            <strong>
            <asp:Label ID="Label4" runat="server" Text="PLATE"></asp:Label>
            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TBXPLACE" runat="server" Height="22px"></asp:TextBox>
            </strong>
        </p>
        <p class="auto-style1">
            <strong>
            <asp:Label ID="Label5" runat="server" Text="TYPE"></asp:Label>
            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TBXTYPE" runat="server" Height="23px"></asp:TextBox>
            </strong>
        </p>
        <p class="auto-style1">
            <strong>
            <asp:Label ID="Label6" runat="server" Text="MODEL YEAR"></asp:Label>
            :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TBXYEAR" runat="server" Height="23px"></asp:TextBox>
            </strong>
        </p>
        <p class="auto-style1">
            <strong>
            <asp:Label ID="Label7" runat="server" Text="COLOR"></asp:Label>
            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TBXCOLOR" runat="server" Height="24px"></asp:TextBox>
            </strong>
        </p>
        <p>
            <strong>&nbsp;SONUÇ:<asp:Label ID="LBLSONUC" runat="server"></asp:Label>
            </strong>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="BTNEKLE" runat="server" OnClick="BTNEKLE_Click" Text="ADD" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BTNSIL" runat="server" Text="DELETE" OnClick="BTNSIL_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BTNDUZENLE" runat="server" Text="EDİT" OnClick="BTNDUZENLE_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BTNLISTELE" runat="server" Text="LİST" OnClick="BTNLISTELE_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" Width="1750px">
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
