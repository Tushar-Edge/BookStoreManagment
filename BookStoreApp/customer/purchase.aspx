<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="BookStoreApp.customer.purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%">
    <tr>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Book Name </td>
        <td style="width: 875px">
            <asp:TextBox ID="TxtSearch" runat="server" Style="margin-left: 14px; margin-right: 394" Width="191px"></asp:TextBox>
            <asp:Button ID="SearchBtn" runat="server" BackColor="White" CssClass="align-content-xxl-start" ForeColor="#339933" OnClick="SearchBtn_Click" Style="margin-left: 28px" Text="Search" Width="96px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:Panel ID="PurchasePanel" runat="server" BackColor="#999999">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 235px">Your searches</td>
                        <td colspan="2" style="width: 268px">
                            <asp:Image ID="CoverImg" runat="server" Height="363px" Width="279px" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="3" style="width: 235px">&nbsp;</td>
                        <td style="width: 268px">ID</td>
                        <td style="width: 268px">
                            <asp:Label ID="LblId" runat="server"></asp:Label>
                        </td>
                        <td rowspan="3"></td>
                        <td rowspan="3">&nbsp;</td>
                        <td rowspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 268px">
                            <asp:Label ID="LblBook" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 268px">Author</td>
                        <td style="width: 268px">
                            <asp:Label ID="LblAuthor" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">&nbsp;</td>
                        <td style="width: 268px">Genre</td>
                        <td style="width: 268px">
                            <asp:Label ID="LblGenre" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="2" style="width: 235px">&nbsp;</td>
                        <td style="width: 268px">Price($)</td>
                        <td style="width: 268px">
                            <asp:Label ID="LblPrice" runat="server"></asp:Label>
                        </td>
                        <td rowspan="2">&nbsp;</td>
                        <td rowspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 268px">Publisher</td>
                        <td style="width: 268px">
                            <asp:Label ID="LblPublisher" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 235px">&nbsp;</td>
                        <td>Quantity</td>
                        <td>
                            <asp:TextBox ID="TxtQuantity" runat="server"  TextMode="Number"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 235px">&nbsp;</td>
                        <td style="width: 268px">
                            <asp:Label ID="LblMsg" runat="server"></asp:Label>
                        </td>
                        <td style="width: 268px">
                            <asp:Button ID="cartBtn" runat="server"  Text="Add to cart" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 235px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2" style="width: 268px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 235px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2" style="width: 268px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 235px">&nbsp;</td>
                        <td colspan="2" style="width: 268px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
</table>
</asp:Content>
