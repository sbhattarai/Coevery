using System.Net.Mail;
using Orchard.ContentManagement.Records;
using System.ComponentModel.DataAnnotations;

namespace Orchard.Media.Models {
    public class MediaSettingsPartRecord : ContentPartRecord {
        internal const string DefaultWhitelist = "jpg jpeg gif png txt doc docx xls xlsx pdf ppt pptx pps ppsx odt ods odp";
        private string _whitelist = DefaultWhitelist;

        public virtual string UploadAllowedFileTypeWhitelist {
            get { return _whitelist; }
            set { _whitelist = value; }
        }
    }
}