<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InventoryManagment.aspx.cs" Inherits="BookStoreApp.Admin.InventoryManagment" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
    <tr>
        <td style="width: 835px">
            <asp:Label ID="LblMsg" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            <asp:Button ID="ManageStock" runat="server" OnClick="ManageStock_Click" Text="Manage Stock" />
        </td>
    </tr>
    <tr>
        <td contenteditable="true" draggable="false" rowspan="3" style="width: 835px">
            <asp:GridView ID="GvBooks" runat="server" AutoGenerateColumns="False" Height="312px" Width="942px"  >
                <Columns>
                    <asp:BoundField DataField="Book ID" HeaderText="Book ID" />
                    <asp:BoundField DataField="Book Namee" HeaderText="Book Name" />
                   <asp:ImageField DataImageUrlField="Cover" HeaderText="Book" ControlStyle-Width="200px" ControlStyle-height="300px" >
<ControlStyle Height="300px" Width="200px"></ControlStyle>
                    </asp:ImageField>

                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" />
                    <asp:BoundField DataField="Publisher Namee" HeaderText="Publisher" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                </Columns>
            </asp:GridView>
        </td>
        <td>
            <asp:SqlDataSource ID="demodata" runat="server" ConnectionString="<%$ ConnectionStrings:BookStore_MangementConnectionString %>" SelectCommand="DisplayBooks" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
