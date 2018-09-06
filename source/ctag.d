module ctag;

import dddb;
import std.file;
import std.algorithm.searching : canFind;

alias Title = string;
alias Author = string;
alias 
alias Tag = string;

struct Book {
    Title title;
    Tag[] tags;

    this(Title t, Tag tg) {
        this.title = t;
        this.tags = [tg];
    }

    this(Title t, Tag[] tgs) {
        this.title = t;
        this.tags = tgs;
    }

    void append(Tag tg) {
        this.tags ~= tg;
    }
}

auto scanBooks(string path) {
    import std.stdio : writeln;
    foreach(string name; dirEntries(path, SpanMode.breadth)) {
        if (canFind(name, "pdf")) {
            writeln(name);
        }
    }
}