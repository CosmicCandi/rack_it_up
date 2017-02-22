class Pirate

  def self.call(num = 1)
    pirate_text = "<html><meta><head></head><title>Y'arr! Shiver Me timbers!</title><body bgcolor='#000000' text='#FFFFFF'><h3>Gabion Davy Jones</h3> Locker aye to go on account scurvy Buccaneer cackle fruit lugsail long boat. Run a rig belaying pin knave draught landlubber or just lubber Jolly Roger chantey grog draft. Shiver me timbers strike colors ye belaying pin chase come about barque shrouds tackle. Plate Fleet marooned rum case shot warp yo-ho-ho killick list spyglass. Landlubber or just lubber topgallant hornswaggle black spot bilge no prey, no pay broadside brigantine scurvy. Tackle Jack Tar chandler holystone loot come about Sail ho warp snow.<br><img src =\"https://s-media-cache-ak0.pinimg.com/originals/1b/56/cc/1b56cc3c34ed801a9e74fb845e0b7ffc.png\" height=\"75\" width=\"75\"> </body></html>"
    yarrrrgh = ""

    num.times do
    yarrrrgh = pirate_text * num
    end
    yarrrrgh
  end
end
