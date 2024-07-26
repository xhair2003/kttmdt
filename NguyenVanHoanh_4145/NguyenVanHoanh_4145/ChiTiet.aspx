<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="NguyenVanHoanh_4145.ChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .product_detail {
            display: flex;
            gap: 20px;
            align-items: flex-start;
            max-width:500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="product_detail">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' />
                <div class="product_detail-content">
                    <asp:Label Font-Bold="true" ID="Label1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Mota") %>'></asp:Label>
                    <br />
                    <br />
                    Đơn giá:
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Dongia", "{0:0,0}") %>'></asp:Label>
                    <br />
                    Số lượng:
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Mua" />
                    <asp:Button ID="Button2" runat="server" Text="Xem giỏ hàng" />
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
