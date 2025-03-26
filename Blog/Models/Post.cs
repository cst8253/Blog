using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Blog.Models;

[Table("post")]
public class Post
{
    [Key]
    [Column("postid")]
    public int Id { get; set; }

    [Required]
    [Column("title")]
    public string Title { get; set; }

    [Required]
    [Column("content")]
    public string Content { get; set; }

    [Required]
    [Display(Name = "Created By")]
    [Column("createdby")]
    public string CreatedBy { get; set; }
    
    [Column("createdon")]
    public DateTime CreatedOn { get; set; }
    
    public ICollection<Comment> Replies { get; set; }
}