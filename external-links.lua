function Link(el)
  if el.target:match("http") then
    el.attributes.target = "_blank"
    el.attributes.rel = "noopener"
  end
  return el
end
