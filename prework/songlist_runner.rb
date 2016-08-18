# Create Song class
class Song

  def initialize(title, artist, duration, lyrics)
    @title = title
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end

  def title
    return @title
  end

  def artist
    return@artist
  end

  def duration
    return @duration
  end

  def lyrics
    return @lyrics
  end

  def play
    `say #{@lyrics}`
  end

  def friendly_duration
    seconds = @duration % 60
    minutes = (@duration / 60) % 60
    return minutes.to_s + ":" + seconds.to_s
  end
end


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

  def shuffle
    return @shuffle
  end

  def shuffle
    @song_list.shuffle
  end

  def total_duration
    total_duration = 0
    @song_list.each do |song_duration|
      total_duration += song_duration.duration
    end
    return total_duration
  end
end

# Create a new instance of SongList and add Song instances to it.
songlist = SongList.new
songlist.add_song(Song.new("Diamond Dogs", "David Bowie", 220, "Call them the diamond dogs"))
songlist.add_song(Song.new("The Passenger", "Iggy Pop", 370, "I am the passenger"))
songlist.add_song(Song.new("Life During Wartime", "Talking Heads", 450, "This ain't no disco"))
