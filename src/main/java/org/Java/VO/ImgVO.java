package org.Java.VO;

import lombok.Data;

@Data
public class ImgVO {
	private String uploader; //업로더( 호텔 : 'ho' , 객실 : 'ro', 리뷰 : 'rv' )
	private int no; // 호텔 , 객실, 리뷰 번호
	private String url; //이미지 경로
}
