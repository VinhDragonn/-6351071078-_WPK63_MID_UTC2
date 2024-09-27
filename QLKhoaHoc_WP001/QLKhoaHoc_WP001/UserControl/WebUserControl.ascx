<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl.ascx.cs" Inherits="de1.UserControl.WebUserControl1" %>

<asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="EntityDataSource1">
    <ItemTemplate>
        ID:
        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        <br />
        ImageFilePath:
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageFilePath", "~/images/Courses/{0}") %>' />
        <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/WebForm1.aspx?id=" + Eval("id") %>' CssClass="">View Details</asp:HyperLink>
       
<br />
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLKhoaHocEntities1" DefaultContainerName="QLKhoaHocEntities1" EnableFlattening="False" EntitySetName="Courses">
</asp:EntityDataSource>

