<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Feedbacks.aspx.cs" Inherits="MyEngTutor_Website.Feedbacks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="ms-5 ps-5">
            <h1>Feedbacks</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="adminMainMenu.aspx">Home</a></li>
                    <li class="breadcrumb-item active">Feedbacks</li>
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
                                <label class="form-label" for="txtID">Feedback ID</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtURL">Subject</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-4">
                        <asp:TextBox ID="txtDescription" CssClass="form-control" Rows="7" runat="server"></asp:TextBox>
                        <label class="form-label" for="txtText">Description</label>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtName" CssClass="form-control" Rows="7" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtName">Name</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" Rows="7" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtEmail">Email</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-outline mb-4">
                        <div class="d-grid">
                            <asp:Button ID="btnDelete" CssClass="btn btn-warning" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        </div>
                    </div>
                    <div class="form-outline mb-4">
                        <div class="d-grid">
                            <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel Operation" OnClick="btnCancel_Click" />
                        </div>
                    </div>
                    <div class="mx-auto col-10 col-md-8 col-lg-6">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="feedbacks" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
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
                            <asp:SqlDataSource ID="feedbacks" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>