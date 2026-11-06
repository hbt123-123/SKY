package unluac;

import java.io.FileOutputStream;
import java.io.IOException;

import unluac.decompile.FileOutputProvider;
import unluac.decompile.Output;

public class Configuration {

  public enum Mode {
    DECOMPILE,
    DISASSEMBLE,
    ASSEMBLE,
    HELP,
    VERSION,
  }
  
  public enum VariableMode {
    NODEBUG,
    DEFAULT,
    FINDER,
  }
  
  public boolean rawstring;

  /** Sky: Children of the Light (TGC) Lua 5.2 chunk variant: 4-byte int string lengths. */
  public boolean sky52;
  public Mode mode;
  public VariableMode variable;
  public boolean strict_scope;
  public boolean luaj;
  public String typemap;
  public String opmap;
  public String output;
  
  public Configuration() {
    rawstring = false;
    sky52 = false;
    mode = Mode.DECOMPILE;
    variable = VariableMode.DEFAULT;
    strict_scope = false;
    luaj = false;
    opmap = null;
    output = null;
  }
  
  public Configuration(Configuration other) {
    rawstring = other.rawstring;
    mode = other.mode;
    variable = other.variable;
    strict_scope = other.strict_scope;
    opmap = other.opmap;
    output = other.output;
  }
  
  public Output getOutput() {
    if(output != null) {
      try {
        return new Output(new FileOutputProvider(new FileOutputStream(output)));
      } catch(IOException e) {
        Main.error(e.getMessage(), false);
        return null;
      }
    } else {
      return new Output();
    }
  }
  
}
