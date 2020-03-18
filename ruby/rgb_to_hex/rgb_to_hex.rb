def rgb(r, g, b)
  return '' if r.nil? or g.nil? or b.nil?

  r = 0 if r < 0
  g = 0 if g < 0
  b = 0 if b < 0

  r = 255 if r > 255
  g = 255 if g > 255
  b = 255 if b > 255

  rh = r.to_s(16).upcase
  gh = g.to_s(16).upcase
  bh = b.to_s(16).upcase

  rh += rh if rh.length == 1
  gh += gh if gh.length == 1
  bh += bh if bh.length == 1

  "#{rh}#{gh}#{bh}"
end
