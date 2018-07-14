#methode pour décaler les lettres de 3 rangs

def caesar_cipher(string, shift = 3)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = non_caps.merge(caps)

  string.chars.map { |c| encrypter.fetch(c, c) }
end

p caesar_cipher("romain").join

#chiffrer le texte avec l'ASCII


ascii = "En cryptographie, le chiffrement par décalage, aussi connu comme le chiffre de César ou le code de César (voir les différents noms), est une méthode de chiffrement très simple utilisée par Jules César dans ses correspondances secrètes (ce qui explique le nom « chiffre de César »). Le texte chiffré s'obtient en remplaçant chaque lettre du texte clair original par une lettre à distance fixe, toujours du même côté, dans l'ordre de l'alphabet. Pour les dernières lettres (dans le cas d'un décalage à droite), on reprend au début. Par exemple avec un décalage de 3 vers la droite, A est remplacé par D, B devient E, et ainsi jusqu'à W qui devient Z, puis X devient A etc. Il s'agit d'une permutation circulaire de l'alphabet. La longueur du décalage, 3 dans l'exemple évoqué, constitue la clé du chiffrement qu'il suffit de transmettre au destinataire s'il sait déjà qu'il s'agit d'un chiffrement de César pour que celui-ci puisse déchiffrer le message. Dans le cas de l'alphabet latin, le chiffre de César n'a que 26 clés possibles (y compris la clé nulle, qui ne modifie pas le texte)".chars.map { |c| c.ord }
shifted = ascii.map { |c| c + 5 }
shifted2 = shifted.map { |c| c.chr }.join

p shifted2

def chiffre_de_cesar(x, y = 1)

  alphabet = Array('a'..'z')
  encrypter = Hash[alphabet.zip(alphabet.rotate(y))]
  x.chars.map { |c| encrypter.fetch(c, " ") }
end

p chiffre_de_cesar("zzzz zzzz", 5).join
