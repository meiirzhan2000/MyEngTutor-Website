<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="WebForm2.aspx.cs" Inherits="MyEngTutor_Website.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="ms-5 ps-5">
            <h1>Unit Content</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="adminMainMenu.aspx">Home</a></li>
                    <li class="breadcrumb-item active">Unit</li>
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
                                <label class="form-label" for="txtID">Unit ID</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:TextBox ID="txtUnit" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <label class="form-label" for="txtUnit">Unit Text</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mb-4">
                        <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server"></asp:TextBox>
                        <label class="form-label" for="txtDescription">Description</label>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:DropDownList ID="txtSkill" class="btn btn-secondary dropdown-toggle" runat="server" DataSourceID="SqlDataSource1" DataTextField="skillName" DataValueField="skillName">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT [skillName] FROM [skills]"></asp:SqlDataSource>
                                </div>
                                <label class="form-label" for="txtSkill">Skill</label>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:DropDownList ID="txtLevel" class="btn btn-secondary dropdown-toggle" runat="server" DataSourceID="SqlDataSource2" DataTextField="levelName" DataValueField="levelName">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT [levelName] FROM [levels]"></asp:SqlDataSource>
                                </div>
                                <label class="form-label" for="txtLevel">Level</label>
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
                <asp:GridView ID="unit" runat="server" CssClass="table table-bordered table-condensed table-responsive table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="unitID" DataSourceID="unitTable" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="unitID" HeaderText="unitID" ReadOnly="True" SortExpression="unitID" InsertVisible="False" />
                        <asp:BoundField DataField="unitName" HeaderText="unitName" SortExpression="unitName" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="skillName" HeaderText="skillName" SortExpression="skillName" />
                        <asp:BoundField DataField="levelName" HeaderText="levelName" SortExpression="levelName" />
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
                <asp:SqlDataSource ID="unitTable" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT * FROM [units]"></asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>
