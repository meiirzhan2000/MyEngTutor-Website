<%@ Page Language="C#" MasterPageFile="~/visitorMasterPage.Master" AutoEventWireup="true" CodeFile="RegisterationForm.aspx.cs" Inherits="MyEngTutor_Website.RegisterationForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background-color: #eee;">
        <div id="alertMessage" runat="server" class="alert alert-success alert-dismissible fade show" role="alert">
            <h4 id="alertText" runat="server" class="alert-heading">Registered Successfully!</h4>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-7 d-flex align-items-center p-3">
                                <div class="card-body">
                                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign Up</h5>
                                    <div class="form-floating mb-4">
                                        <asp:TextBox ID="fname" type="text" runat="server" CssClass="form-control mb-4" placeholder="Place firstName here"></asp:TextBox>
                                        <label id="name1" runat="server" class="text-dark" for="fname">First Name</label>
                                    </div>

                                    <div class="form-floating mb-4">
                                        <asp:TextBox ID="sname" type="text" runat="server" CssClass="form-control mb-4" placeholder="Place secondName here"></asp:TextBox>
                                        <label id="name2" runat="server" class="text-dark" for="sname">Second Name</label>
                                    </div>
                                    <div class="form-floating mb-4">
                                        <asp:TextBox ID="userEmail" type="email" runat="server" CssClass="form-control mb-4" placeholder="Place email here"></asp:TextBox>
                                        <label id="email" runat="server" class="text-dark"  for="userEmail">Email</label>
                                    </div>

                                    <div class="form-floating mb-4">
                                        <asp:TextBox ID="userPassword" type="password" runat="server" CssClass="form-control mb-4" placeholder="Place password here"></asp:TextBox>
                                        <label id="password" runat="server" class="text-dark" for="userPassword">Password</label>
                                    </div>

                                    <div class="form-floating mb-4">
                                        <asp:TextBox ID="confPassword" type="password" runat="server" CssClass="form-control mb-4" placeholder="Place Confirmation of the Password here"></asp:TextBox>
                                        <label id="confPas" runat="server" class="text-dark" for="confPassword">Confirm Password</label>
                                    </div>

                                    <div class="d-flex justify-content-around align-items-center mb-4">
                                        <div class="form-check">
                                            <label class="form-check-label" for="form1Example3"> By Completing Registration, I agreed to <a class="btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal">Terms of service</a></label>
                                        </div>
                                    </div>
                                    <div class="d-grid">
                                        <asp:Button ID="signUp" runat="server" CssClass="btn btn-dark btn-lg btn-block" OnClick="Button1_Click" Text="Sing Up" type="submit" />
                                    </div>

                                    <p class="text-center text-muted mt-5 mb-0">Existing User ? <a href="Login.aspx"
                                        class="fw-bold text-body"><u>Login here</u></a></p>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-5 d-none d-md-block">
                                <img src="Assets/RegisterFormImage.png" class="img-fluid rounded-start" alt="Sample image" style="border-radius: 1rem 0 0 1rem;"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Terms of service</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                Please read these Terms and Conditions carefully before using our website. By accessing or using the website, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these Terms and Conditions, you may not access the website.

Intellectual Property
The content on this website, including but not limited to text, graphics, logos, images, and software, is the property of My English Tutor and is protected by intellectual property laws. You may not reproduce, distribute, modify, or create derivative works from any material on this website without our prior written consent.

Use of Website
You may use this website for personal, non-commercial purposes in accordance with these Terms and Conditions. You agree not to use the website for any illegal or unauthorized purpose and to comply with all applicable laws and regulations.

User Accounts
To access certain features or services on the website, you may need to create a user account. You are responsible for maintaining the confidentiality of your account credentials and for any activities that occur under your account. You must notify us immediately of any unauthorized use of your account.

Privacy
Your privacy is important to us. Please refer to our Privacy Policy for information on how we collect, use, and disclose personal information.

Third-Party Links
This website may contain links to third-party websites or resources. We do not endorse and are not responsible for the content, products, or services offered by third parties. You acknowledge and agree that we shall not be liable for any damages or loss arising from your use of such third-party websites or resources.

Disclaimer of Warranty
This website is provided on an "as is" and "as available" basis. We make no warranties, expressed or implied, regarding the operation or availability of the website or the accuracy, completeness, or reliability of any content. We disclaim all warranties, including but not limited to warranties of merchantability, fitness for a particular purpose, and non-infringement.

Limitation of Liability
In no event shall My English Tutor be liable for any direct, indirect, incidental, special, or consequential damages arising out of or in connection with the use of the website or the inability to use the website, even if we have been advised of the possibility of such damages.

Modification and Termination
We reserve the right to modify, suspend, or terminate the website or any part thereof at any time without prior notice. We may also modify these Terms and Conditions from time to time, and such modifications will be effective upon posting on the website.

Governing Law
These Terms and Conditions shall be governed by and construed in accordance with the laws of [Jurisdiction], without regard to its conflict of laws provisions.

Severability
If any provision of these Terms and Conditions is held to be invalid or unenforceable, such provision shall be struck and the remaining provisions shall be enforced to the fullest extent permitted by law.

By using this website, you acknowledge that you have read, understood, and agreed to these Terms and Conditions. If you have any questions or concerns, please contact us at rikimarubro@mail.ru.
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        const myModal = document.getElementById('myModal')
        const myInput = document.getElementById('myInput')

        myModal.addEventListener('shown.bs.modal', () => {
            myInput.focus()
        })
    </script>
</asp:Content>
