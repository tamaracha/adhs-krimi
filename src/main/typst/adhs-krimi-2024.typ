#import "@preview/tiaoma:0.2.1": qrcode
#import "./lib.typ": book

#let threadLink = "https://adhs-forum.adxs.org/t/forum-fiction-paul-krampitz-24-neurodiverse-tage-in-seligenburg/24086/1"

#show: book.with(
  title: "ADHS-Krimi 2024",
  author: "Elementary",
  dedication: "Für Pauls inneren Kritiker",
  publishing-info: [
    #link(threadLink)[ADHS-Forum des ADXS e.V.]
    #qrcode(threadLink)
],
paper-size: "a4",
)
#set text(lang: "de", region: "de")
#show heading.where(level: 1): set heading(supplement: [Tür], numbering: "1")
#for n in range(1, 25) {
  include("./chapters/" + str(n) + ".typ")
}
