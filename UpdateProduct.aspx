﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateProduct.aspx.cs" Inherits="UpdateProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Serial" DataSourceID="SqlDataSourcer" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Serial" HeaderText="Serial" InsertVisible="False" ReadOnly="True" SortExpression="Serial" />
            <asp:BoundField DataField="ArabicName" HeaderText="ArabicName" SortExpression="ArabicName" />
            <asp:BoundField DataField="EnglishName" HeaderText="EnglishName" SortExpression="EnglishName" />
            <asp:BoundField DataField="DescName" HeaderText="DescName" SortExpression="DescName" />
            <asp:BoundField DataField="SerialGroup" HeaderText="SerialGroup" SortExpression="SerialGroup" />
            <asp:BoundField DataField="Unit1" HeaderText="Unit1" SortExpression="Unit1" />
            <asp:BoundField DataField="PricePurchase1Unit1" HeaderText="PricePurchase1Unit1" SortExpression="PricePurchase1Unit1" />
            <asp:BoundField DataField="PriceSale1Unit1" HeaderText="PriceSale1Unit1" SortExpression="PriceSale1Unit1" />
            <asp:BoundField DataField="Counts" HeaderText="Counts" SortExpression="Counts" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourcer" runat="server" ConnectionString="<%$ ConnectionStrings:Erp %>" SelectCommand="SELECT [Serial], [ArabicName], [EnglishName], [DescName], [SerialGroup], [Unit1], [PricePurchase1Unit1], [PriceSale1Unit1], [Counts] FROM [ItemCode]"  UpdateCommand="update ItemCode set [ArabicName]=@ArabicName, [EnglishName]=@EnglishName, [DescName]=@DescName, [SerialGroup]=@SerialGroup, [Unit1]=@Unit1, [PricePurchase1Unit1]=@PricePurchase1Unit1, [PriceSale1Unit1]=@PriceSale1Unit1, [Counts]=@Counts where serial=@serial" DeleteCommand="delete FROM [ItemCode] where [Serial]=@Serial"></asp:SqlDataSource>
</asp:Content>
