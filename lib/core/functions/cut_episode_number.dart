List<String> cutEpisodeNumber(List<String> episodes) {
  return episodes.map((episode) {
    final startIndex = episode.indexOf("/episode/") + 9;
    final endIndex = episode.length;
    return episode.substring(startIndex, endIndex);
  }).toList();
}
