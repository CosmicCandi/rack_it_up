class Bacon


  def self.call(num = 1)
    bacon_text = "<h3>Bacon ipsum dolor</h3> amet picanha meatball andouille alcatra ground round, beef hamburger. Swine leberkas pastrami boudin doner. Pork chop drumstick porchetta salami, shoulder pastrami spare ribs cupim tenderloin turducken filet mignon tri-tip. Pork pastrami frankfurter doner. Hamburger porchetta capicola, shoulder ribeye jerky shankle frankfurter landjaeger swine. Cupim shank landjaeger, ham rump hamburger short ribs tail pork chop. <br>"
    bacon = ""

    num.times do
    bacon = bacon_text * num
    end
    bacon
  end
end
