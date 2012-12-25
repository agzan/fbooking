module ApplicationHelper
  def summarize(body, length)
    return simple_format(truncate(body.gsub(/<\/?.*?>/,  ""), :length => length)).gsub(/<\/?.*?>/,  "")
  end
end
