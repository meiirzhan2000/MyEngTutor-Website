<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMasterPage.Master" CodeBehind="AdminContentUpdate.aspx.cs" Inherits="MyEngTutor_Website.AdminContentUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="ms-5 ps-5">
            <h1>Content</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="adminMainMenu.aspx">Home</a></li>
                    <li class="breadcrumb-item active">Content</li>
                </ol>
            </nav>
        </div>
        <div class="card-body">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtID" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtID">Content ID</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtURL" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtURL">Text URL</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-4">
                        <asp:TextBox ID="txtText" CssClass="form-control" Rows="7" runat="server"></asp:TextBox>
                        <label class="form-label" for="txtText">Content Text</label>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:DropDownList ID="txtContent" class="btn btn-secondary dropdown-toggle" runat="server">
                                        <asp:ListItem>Video</asp:ListItem>
                                        <asp:ListItem>Text</asp:ListItem>
                                        <asp:ListItem>Image</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <label class="form-label" for="txtContent">Content Type</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:DropDownList ID="txtUnitName" class="btn btn-secondary dropdown-toggle" runat="server" DataSourceID="unitsForContent" DataTextField="unitID" DataValueField="unitID">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="unitsForContent" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT [unitID], [unitName] FROM [units]"></asp:SqlDataSource>
                                </div>
                                <label class="form-label" for="txtUnitName">Unit Number</label>
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAdd_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:Button ID="btnDelete" CssClass="btn btn-warning" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:Button ID="btnUpdate" CssClass="btn btn-info" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-outline mb-4">
                        <div class="d-grid">
                            <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel Operation" OnClick="btnCancel_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>
