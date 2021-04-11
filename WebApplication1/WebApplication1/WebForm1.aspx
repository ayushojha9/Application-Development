<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <h1>Customer Form</h1>
    <p>Member Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

    </p>
</head>
<body style="height: 468px">
    <form id="form1" runat="server">   
        <asp:Label ID="Customer_name" runat="server" Text="Customer Name"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxname" runat="server" style="margin-left: 48px" Width="308px"></asp:TextBox>

&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxname" ErrorMessage="Name required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="LabelAddress" runat="server" Text="Customer Address"></asp:Label>
        <asp:TextBox ID="TextBoxAddress" runat="server" style="margin-left: 31px" Width="308px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="Address required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<p>
            <asp:Label ID="LabelContact" runat="server" Text="Contact Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxContact" runat="server" style="margin-left: 18px" Width="308px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxContact" ErrorMessage="Contact required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxEmail" runat="server" style="margin-left: 90px" Width="308px"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Member_Type&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="User1">Normal User</asp:ListItem>
                <asp:ListItem Value="User2">Admin User</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_Msg" runat="server"></asp:Label>
        </p>
        <p style="height: 58px; margin-top: 139px">
            <asp:Button ID="ButtonDone" runat="server" BackColor="Green" style="margin-left: 130px" Text="Done" Width="114px" OnClick="ButtonDone_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonClear" runat="server" BackColor="Orange" style="margin-left: 83px" Text="Clear" Width="114px" />
            <asp:Button ID="ButtonUpdate" runat="server" style="margin-left: 59px" Text="Update" Width="148px" />
        </p>
        <p style="height: 433px; margin-top: 139px">
            <asp:GridView ID="GridView1" runat="server" Height="203px" Width="1018px">
            </asp:GridView>
        </p>
    </form>
</body>
</html>

