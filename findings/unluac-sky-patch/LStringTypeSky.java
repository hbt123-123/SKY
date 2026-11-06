package unluac.parse;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/**
 * String type for Sky: Children of the Light (TGC "Ancestor Engine") Lua 5.2 chunks.
 *
 * Difference from stock Lua 5.2:
 *  - the string length is a 4-byte int (header.integer) instead of a size_t (8 bytes)
 *  - the length counts the trailing NUL, and the NUL byte is present in the dump
 *    (same convention as stock: length = strlen + 1)
 */
class LStringTypeSky extends LStringType {

  private final AtomicReference<StringBuilder> b = new AtomicReference<StringBuilder>(new StringBuilder());

  @Override
  public LString parse(final ByteBuffer buffer, BHeader header) {
    BInteger size = header.integer.parse(buffer, header);
    final StringBuilder b = this.b.get();
    b.setLength(0);
    size.iterate(new Runnable() {
      @Override
      public void run() {
        b.append((char) (0xFF & buffer.get()));
      }
    });
    if(b.length() == 0) {
      return LString.NULL;
    } else {
      char last = b.charAt(b.length() - 1);
      b.delete(b.length() - 1, b.length());
      String s = b.toString();
      if(header.debug) {
        System.out.println("-- parsed <string> \"" + s + "\"");
      }
      return new LString(s, last);
    }
  }

  @Override
  public void write(java.io.OutputStream out, BHeader header, LString string) throws java.io.IOException {
    int len = string.value.length();
    if(string == LString.NULL) {
      header.integer.write(out, header, header.integer.create(0));
    } else {
      header.integer.write(out, header, header.integer.create(len + 1));
      for(int i = 0; i < len; i++) {
        out.write(string.value.charAt(i));
      }
      out.write(0);
    }
  }
}
