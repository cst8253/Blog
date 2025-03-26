using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Blog.Models;

[Table("comment")]
public class Comment
{
    [Key]
    [Column("commentid")]
    public int Id { get; set; }
    
    [ForeignKey("Post")]
    [Column("postid")]
    public int PostId { get; set; }

    [Required]
    [Column("comment")]
    public string Content { get; set; }

    [Required]
    [Display(Name = "Your Name")]
    [Column("createdby")]
    public string CreatedBy { get; set; }
    
    [Column("createdon")]
    public DateTime CreatedOn { get; set; }
    
    public Post Post { get; set; }
}