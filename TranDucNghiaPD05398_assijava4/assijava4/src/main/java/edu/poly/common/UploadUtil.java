package edu.poly.common;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.commons.io.FilenameUtils;

public class UploadUtil {
	public static String processUploadFile(String fieldName, String storeFolder, String storeFilename,
			HttpServletRequest request) throws IOException, ServletException {
		Part filepart = request.getPart(fieldName);

		if (fieldName == null || filepart.getSize() == 0) {
			return "";

		}
		if (storeFolder == null) {
			storeFolder = "/uploads";

		}
		if (storeFilename == null) {
			storeFilename = Path.of(filepart.getSubmittedFileName()).getFileName().toString();
		} else {
			storeFilename += "." + FilenameUtils.getExtension(Path.of(filepart.getSubmittedFileName()).toString());
		}
		String uploadFoder = request.getServletContext().getRealPath(storeFolder);
		Path uploadPath = Paths.get(uploadFoder);

		if (!Files.exists(uploadPath)) {
			Files.createDirectories(uploadPath);
		}
		filepart.write(Paths.get(uploadPath.toString(), storeFilename).toString());
		return storeFilename;
	}
}
