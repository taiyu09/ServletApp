package model;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class  MakeHash {
	String  hashstring;
	public MakeHash(String args) {
		// SHA-512（SHA-2）  MessageDigestクラスは、メッセージダイジェストのアルゴリズムを提供するクラス
		MessageDigest sha512;
		hashstring ="";
		try {
			sha512 = MessageDigest.getInstance("SHA-512");            //アルゴリズムを指定
			byte[] sha512_result = sha512.digest( args.getBytes() );   //バイトに変換しハッシュ値を取得する
            hashstring = String.format("%x", new BigInteger(1, sha512_result)); //64文字出力
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
	}
	public String   getHash() {return hashstring;}
}