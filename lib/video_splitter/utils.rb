###############################################################################
##################################################################################
#
# This file is part of VIDEO SPLITTER (VS), a video-utility released as a ruby gem
# that allows you to split video files.
#
# Copyright (c) 2012 Interact S.P.A.
#
# VS is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# VS is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with VS.  If not, see <http://www.gnu.org/licenses/>.
#
# Contact us via email at meccanica@interact.it or at
#
# Interact S.P.A.
# Via Angelo Bargoni, 78
# 00153 Rome, Italy
#
#################################################################################
#################################################################################

module VideoSplitter
  module Utils

    # Return file name if it exists in input path, nil otherwise
    def self.find_file _file_name
      full_path = File.join(VideoSplitter::Constants::INPUT_ROOT_PATH, _file_name)
      return full_path if File.file?(full_path)
      nil
    end

    # Run vlc program to play video... hopefully
    def self.play_video _file_path
      system 'vlc', _file_path
    end

    # Delete file in OUTPUT_ROOT_PATH
    def self.delete _filename
      File.unlink(File.join(VideoSplitter::Constants::OUTPUT_ROOT_PATH, File.basename(_filename)))
    end

  end
end

