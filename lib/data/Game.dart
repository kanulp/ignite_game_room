class Game {
  String title;
  String nextTime;
  bool isAvailable;
  String image;

	Game(String image,String title, String nextTime,bool isAvailable) {
    this.image=image;
    this.title = title;
    this.nextTime = nextTime;
    this.isAvailable = isAvailable;
  }

  void setImage(String image){
    this.image=image;
  }

  String getImage(){
    return this.image;
  }

  String getTitle() {
		return this.title;
	}

	void setTitle(String title) {
		this.title = title;
	}

	bool getAvailable() {
		return this.isAvailable;
	}

	void setAvailable(bool available) {
		this.isAvailable = available;
	}



}
