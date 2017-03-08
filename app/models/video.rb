class Video < ApplicationRecord
  attr_accessor :link
  before_save :fetch_uid

  private

  def fetch_uid
    # fetch the actual video uid from the submitted link
    # this uid will be used to embed video on the page
    self.uid = VideoInfo.new(self.link).video_id
  end
end
