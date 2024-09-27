<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="de1.WebForm1" %>
<%@ Register src="UserControl/WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    </asp:Content>
