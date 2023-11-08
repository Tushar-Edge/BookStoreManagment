<%@ Page __designer:mapid="41" AutoEventWireup="true" CodeBehind="modify.aspx.cs" Inherits="BookStoreApp.admin.modify" Language="C#" MasterPageFile="~/Site.Master" Title="" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
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
            <td colspan="5">&nbsp;</td>
        </tr>
    </table>



    <asp:Panel ID="UpdatePanel" runat="server" Width="1500px">
        <table>
            <tr>
                 <td style="width: 127px" rowspan="4">&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                     <asp:Image ID="CoverImage" runat="server" Height="359px" style="margin-left: 70px" Width="286px" />
                 </td>
                <td style="width: 435px">
                    Book ID</td>
                <td style="width: 875px">
                    <asp:Label ID="LblId" runat="server"></asp:Label>
                </td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 435px">
                    Book
                </td>
                <td style="width: 875px">
                    <asp:TextBox ID="TxtBook" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 435px">Price</td>
                <td style="width: 875px;">
                    <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 435px">Stock</td>
                <td>
                    <asp:TextBox ID="TxtStock" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 522px; height: 20px">&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td style="height: 20px; width: 435px"></td>
                <td style="height: 20px; width: 319px">
                    <asp:Button ID="UpdateBtn" runat="server" Style="margin-left: 0px" Text="Update" OnClick="UpdateBtn_Click" Width="219px"  />
                </td>
                <td style="width: 875px; height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 14px;" colspan="3">&nbsp;&nbsp;<asp:Label ID="LblMsg" runat="server"></asp:Label>
                </td>



            </tr>
        </table>
    </asp:Panel>






</asp:Content>
