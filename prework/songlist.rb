# Class SongList
class SongList

  def initialize
    @song_list = []
  end

  def song_list
    return @song_list
  end

  def add_song(song)
    @song_list << song
  end

  def play
    @song_list.`say #{@lyrics}`
  end

  def shuffle
    @song_list.shuffle
  end

  def total_duration
    return total_duration
  end

  def total_duration
    total_duration = 0
    song_list.each do |song_duration|
      total_duration += song.duration
      end
    return @total_duration
  end
end

song1 = Song.new("Diamond Dogs", "David Bowie", 220, "Call them the diamond dogs")
song2 = Song.new("The Passenger", "Iggy Pop", 370, "I am the passenger")
song3 = Song.new("Sharkey's Day", "Laurie Anderson", 450, "It's Sharkey's day today")

songlist = SongList.new
songlist.add_song(song1)
songlist.add_song(song2)
songlist.add_song(song3)
