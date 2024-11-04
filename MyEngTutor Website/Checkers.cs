using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyEngTutor_Website
{
    public class Checkers
    {

        public static string nameChecker(string val, string whichOne)
        {
            if (val.Length <= 0 || val.Length > 140)
            {
                return "Enter " + whichOne + " Name";
            }
            else if (val.Any(char.IsDigit))
            {
                return "Do not include any digits";
            }
            return "";
        }

        public static string emailChecker(string email)
        {
            if (email.Trim().Length <= 0 && email.Trim().Length >= 140)
            {
                return "Provide Your Email Address";
            }
            else if (emailExistOrNot(email))
            {
                return "The Email Address is already taken";
            }
            else if (new EmailAddressAttribute().IsValid(email))
                return "";
            else
                return "The Email Address is not valid";
        }

        private static bool emailExistOrNot(string email)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=myEngTutorDB;Integrated Security=True");
            string check = "select count(*) from [userInfo] where email = '" + email + "' ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            com.Dispose();
            if (temp == 1)
                return true;
            return false;
        }

        public static string passwordChecker(string val)
        {
            int validConditions = 0;
            if (val.Length < 8 || val.Length > 24)
            {
                return "Invalid number of characters, Include at least 8 characters length";
            }
            foreach (char c in val)
            {
                if (c >= 'a' && c <= 'z')
                {
                    validConditions++;
                    break;
                }
            }
            foreach (char c in val)
            {
                if (c >= 'A' && c <= 'Z')
                {
                    validConditions++;
                    break;
                }
            }
            if (val.Any(char.IsDigit))
            {
                validConditions++;
            }
            char[] special = { '@', '#', '$', '%', '^', '&', '+', '=', '!' };
            if (val.IndexOfAny(special) == -1) return "Include Special Character(s)";
            if (validConditions != 3) return "Include At least one lower case letter, upper case letter, and one number";
            return "";

        }

    }
}