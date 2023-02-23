class DetailItem {
  final String userImgUrl;
  final String userName;
  final String uploadDate;
  final bool isLike;
  final int likeCount;
  final int commentCount;
  final String detailImage;
  final String itemTitle;
  final String detailContents;
  final List<String> tags;

  DetailItem(
      this.userImgUrl,
      this.userName,
      this.uploadDate,
      this.isLike,
      this.likeCount,
      this.commentCount,
      this.itemTitle,
      this.detailContents,
      this.tags,
      this.detailImage);
}
