<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMasterPage.Master" CodeBehind="adminFooterContentUpdate.aspx.cs" Inherits="MyEngTutor_Website.adminFooterContentUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="ms-5 ps-5">
            <h1>Zone Content</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="adminMainMenu.aspx">Home</a></li>
                    <li class="breadcrumb-item active">Other Content</li>
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
                                    <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtURL">Title</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-4">
                        <asp:TextBox ID="txtDescription" CssClass="form-control" Rows="7" runat="server"></asp:TextBox>
                        <label class="form-label" for="txtText">Content Description</label>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtImage" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtID">Image URL</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtURL" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtURL">URL Link</label>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:DropDownList ID="txtType" class="btn btn-secondary dropdown-toggle" runat="server">
                                        <asp:ListItem>Video Zone</asp:ListItem>
                                        <asp:ListItem>Game Zone</asp:ListItem>
                                        <asp:ListItem>Story Zone</asp:ListItem>
                                        <asp:ListItem>Apps</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <label class="form-label" for="txtContent">Content Type</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtLastUpdate" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtURL">Last Update</label>
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
        </div>
    </section>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="videoContent" Height="176px" Width="595px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="urlLinks" HeaderText="urlLinks" SortExpression="urlLinks" />
            <asp:BoundField DataField="lastUpdate" HeaderText="lastUpdate" SortExpression="lastUpdate" />
            <asp:BoundField DataField="typeOfContent" HeaderText="typeOfContent" SortExpression="typeOfContent" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#6B696B" Font-Bold="True" Font-Size="Large" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" Font-Size="Large" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="videoContent" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT * FROM [footerContent]"></asp:SqlDataSource>
</asp:Content>
