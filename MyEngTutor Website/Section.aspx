<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeFile="Section.aspx.cs" Inherits="MyEngTutor_Website.Section" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div class="ms-5 ps-5">
            <h1>Question And Answer</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="adminMainMenu.aspx">Home</a></li>
                    <li class="breadcrumb-item active">Question And Answer</li>
                </ol>
            </nav>
        </div>
        <div class="card-body">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="form-outline mb-4">
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                        <label class="form-label" for="form3Example3">Question ID</label>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:DropDownList ID="txtOrder" class="btn btn-secondary dropdown-toggle" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <label class="form-label" for="form3Example1">Question's Order</label>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:DropDownList ID="txtQuestionType" class="btn btn-secondary dropdown-toggle" runat="server">
                                        <asp:ListItem>MultipleChoice</asp:ListItem>
                                        <asp:ListItem>SpaceFillQuestion</asp:ListItem>
                                        <asp:ListItem>TrueFalse</asp:ListItem>
                                        <asp:ListItem>ChooseRightAnwser</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <label class="form-label" for="form3Example2">Question Type</label>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="form-outline">
                                <div class="d-grid">
                                    <asp:DropDownList ID="txtContent" class="btn btn-secondary dropdown-toggle" runat="server" DataSourceID="ContentBase" DataTextField="Id" DataValueField="Id">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="ContentBase" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT [Id] FROM [Content]"></asp:SqlDataSource>
                                </div>
                                <label class="form-label" for="form3Example2">Content ID</label>
                            </div>
                        </div>
                        <div class="form-outline mb-4">
                            <asp:TextBox ID="txtQuestion" CssClass="form-control md-textarea" runat="server"></asp:TextBox>
                            <label class="form-label" for="form3Example3">Question Text</label>
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
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-condensed table-responsive table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="QuestionTable" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Question_Order" HeaderText="Question_Order" SortExpression="Question_Order" />
                        <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                        <asp:BoundField DataField="Question_Type" HeaderText="Question_Type" SortExpression="Question_Type" />
                        <asp:BoundField DataField="ContentID" HeaderText="ContentID" SortExpression="ContentID" />
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
                <asp:SqlDataSource ID="QuestionTable" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT * FROM [question]"></asp:SqlDataSource>
            </div>
            </div>
            <div class="card-body py-5 px-md-5">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="form-outline mb-4">
                            <asp:TextBox ID="txtIDanswer" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
                            <label class="form-label" for="form3Example3">Answer ID</label>
                        </div>
                        <div class="form-outline mb-4">
                            <asp:TextBox ID="txtAnswer" CssClass="form-control" runat="server"></asp:TextBox>
                            <label class="form-label" for="form3Example3">Answer ID</label>
                        </div>
                        <div class="form-outline mb-4">
                            <div class="d-grid">
                                <asp:DropDownList ID="txtQuestionID" class="btn btn-secondary dropdown-toggle" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT [Id] FROM [question]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <div class="form-outline">
                                    <div class="d-grid">
                                        <asp:Button ID="btnAdd2" CssClass="btn btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="form-outline">
                                    <div class="d-grid">
                                        <asp:Button ID="btnDelete2" CssClass="btn btn-warning" runat="server" Text="Delete" OnClick="Button2_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="form-outline">
                                    <div class="d-grid">
                                        <asp:Button ID="btmUpdate2" CssClass="btn btn-info" runat="server" Text="Update" OnClick="Button3_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-outline mb-4">
                            <div class="d-grid">
                                <asp:Button ID="Button4" CssClass="btn btn-danger" runat="server" Text="Cancel Operation" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed table-responsive table-hover" DataKeyNames="Id" DataSourceID="ans" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="answers" HeaderText="answers" SortExpression="answers" />
                            <asp:BoundField DataField="question_ID" HeaderText="question_ID" SortExpression="question_ID" />
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
                    <asp:SqlDataSource ID="ans" runat="server" ConnectionString="<%$ ConnectionStrings:connectionTest %>" SelectCommand="SELECT * FROM [Section]"></asp:SqlDataSource>
                </div>
            </div>
    </section>
</asp:Content>
