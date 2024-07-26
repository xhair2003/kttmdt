<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="NguyenVanHoanh_4145.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>    
        .imageFlower {
            width: 130px;
            height: 130px;
            object-fit: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellSpacing="20">
        <ItemTemplate>
            <asp:Image CssClass="imageFlower" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
            <br />
            Giá: <asp:Label ID="Label2" runat="server" Text='<%# Eval("Dongia", "{0:0,0}") %>'></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Chi tiết sản phẩm" CommandArgument='<%# Eval("MaHoa") %>' OnClick="Button1_Click" />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
