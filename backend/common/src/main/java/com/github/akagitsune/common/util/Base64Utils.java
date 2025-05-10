package com.github.akagitsune.common.util;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

public class Base64Utils {

    public static byte[] encode(byte[] input) {
        return Base64.getEncoder().encode(input);
    }

    public static String encodeToString(String input) {
        return Base64.getEncoder().encodeToString(input.getBytes(StandardCharsets.UTF_8));
    }

    public static String encodeToString(String input, Charset charset) {
        return Base64.getEncoder().encodeToString(input.getBytes(charset));
    }

    public static byte[] decode(byte[] input) {
        return Base64.getDecoder().decode(input);
    }

    public static String decodeToString(String input) {
        return new String(Base64.getDecoder().decode(input), StandardCharsets.UTF_8);
    }

    public static String decodeToString(String input, Charset charset) {
        return new String(Base64.getDecoder().decode(input), charset);
    }
}
