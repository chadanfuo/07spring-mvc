package net.madvirus.spring4.chap07.file;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)  //500������ 404�� �ٲ�
public class NoFileInfoException extends Exception{
	private static final long serialVersionUID=1L;
}
