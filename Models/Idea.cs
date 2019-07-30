using System;
using System.ComponentModel.DataAnnotations;

namespace IdeaORamaApi.Models
{
  public class Idea
  {
    public int Id { get; set; }
    [Required]
    public string Title { get; set; }
    public string Description { get; set; }
    public string TagLine { get; set; }
    public DateTime DateCreated { get; set; } = DateTime.UtcNow;
  }
}