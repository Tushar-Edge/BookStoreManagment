<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookStoreApp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2>
            <table style="width: 100%">
            <tr>
                <td>Login</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</h2>
    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"  Width="238px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
        ControlToValidate="txtUsername"
        InitialValue=""
        ErrorMessage="Username is required."
        Display="Dynamic"
        ForeColor="Red"
    ></asp:RequiredFieldValidator>

    <br />

    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
        ControlToValidate="txtPassword"
        InitialValue=""
        ErrorMessage="Password is required."
        Display="Dynamic"
        ForeColor="Red"
    ></asp:RequiredFieldValidator>

    <br />

    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />


<asp:Label ID="LblMsg" runat="server"></asp:Label>


&nbsp;&nbsp;
    <table style="width: 100%">
        <tr>
            <td style="width: 190px">New User</td>
            <td>
                <asp:Button ID="Registerbtn" runat="server" OnClick="Button1_Click" Text="Register" />
            </td>
        </tr>
    </table>


</asp:Content>
