using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace As.Utils
{
    public class EmailSender
    {
        // Please use your API KEY here.
        private const String API_KEY = "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";

        public void Send(String toEmail, String subject, String contents)
        {
            var client = new SendGridClient(API_KEY);
            var from = new EmailAddress("zy978945930@gmail,com", "FIT5032 Example Email User");
            var to = new EmailAddress("zy978945930@gmail,com", "FIT5032 Example Email User");
            var plainTextContent = contents;
            var htmlContent = "<p>" + contents + "</p>";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var response = client.SendEmailAsync(msg);
        }

    }
}