---
tags: todo, hard, rubeque, cs
languages: ruby
resources: 1
---

# Version Sort

## Objectives: 

Implement the version_sort method.

## Instructions

The version sort takes into account the fact that file names frequently include indices or version numbers. Standard sorting functions usually do not produce the ordering that people expect because comparisons are made on a character-by-character basis. The version sort addresses this problem, and is especially useful when browsing directories that contain many files with indices/version numbers in their names:

```txt
 $ ls -1            $ ls -1v
 foo.zml-1.gz       foo.zml-1.gz
 foo.zml-100.gz     foo.zml-2.gz
 foo.zml-12.gz      foo.zml-6.gz
 foo.zml-13.gz      foo.zml-12.gz
 foo.zml-2.gz       foo.zml-13.gz
 foo.zml-25.gz      foo.zml-25.gz
 foo.zml-6.gz       foo.zml-100.gz
```

Take a look at [this doc](http://guides.rubygems.org/patterns/#semantic-versioning) on semantic versioning if you'd like to learn more.

## Example

``` ruby
filenames = ["foo-7.0b.ext", "foo-7.0.ext", "foo-6.0.ext", "foo-7.0a.ext"] }
filenames.version_sort
# => [ "foo-6.0.ext", "foo-7.0.ext", "foo-7.0a.ext", "foo-7.0b.ext"]

```

## Getting Started

You'll be monkey patching the Array class to make this work. Run the testing suite to get started. The final test relies on the files `unsorted.json` and `sorted.json` in `spec/fixtures`. Take a look at them once you've gotten your first two tests to pass.

## Resources

* [Semantic Versioning](http://guides.rubygems.org/patterns/#semantic-versioning)
