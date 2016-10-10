#############################################################################
##
#W  PackageInfo.g                 GAP 4 Package `kan'           Chris Wensley
#W                                                              Anne Heyworth

SetPackageInfo( rec(
PackageName := "kan",
Subtitle := "including double coset rewriting systems",

Version := "1.26",
Date := "10/010/2016",

##  duplicate these values for inclusion in the manual: 
##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY KANVERSION "1.26">
##  <!ENTITY KANTARFILENAME "kan-1.26.tar.gz">
##  <!ENTITY KANHTMLFILENAME "kan.html">
##  <!ENTITY KANRELEASEDATE "10/10/2016">
##  <!ENTITY KANLONGRELEASEDATE "10th October 2016">
##  <!ENTITY KANCOPYRIGHTYEARS "1996-2016">
##  <#/GAPDoc>

PackageWWWHome := 
  "http://gap-packages.github.io/kan/",

ArchiveURL := "http://gap-packages.github.io/kan/kan-1.26", 
ArchiveFormats := ".tar.gz",

Persons := [
  rec(
    LastName      := "Heyworth",
    FirstNames    := "Anne",
    IsAuthor      := true,
    IsMaintainer  := false, 
    Place         := "Open University" 
    ## Email         := "anne.heyworth@gmail.com" 
  ),
  rec(
    LastName      := "Wensley",
    FirstNames    := "Christopher D.",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "cdwensley.maths@btinternet.com",
    WWWHome       := "http://pages.bangor.ac.uk/~mas023/",
    ## PostalAddress := Concatenation( [
    ##                    "Dr. C.D. Wensley\n",
    ##                    "School of Computer Science\n",
    ##                    "Bangor University\n",
    ##                    "Dean Street\n",
    ##                    "Bangor\n",
    ##                    "Gwynedd LL57 1UT\n",
    ##                    "UK"] ),
    Place         := "Bangor",
    Institution   := "Bangor University"
  )
],

Status := "accepted",
CommunicatedBy := "Leonard Soicher (QMUL)",
AcceptDate := "05/2015",

README_URL := 
  Concatenation( ~.PackageWWWHome, "README" ),
PackageInfoURL := 
  Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
SourceRepository := rec( 
  Type := "git", 
  URL := "https://github.com/gap-packages/kan"
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
AbstractHTML :=
 "The Kan package provides functions for the computation of normal forms \
  of representatives of double cosets of finitely presented groups.",

PackageDoc := rec(
  BookName  := "Kan",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Computing with Kan extensions" 
),

Dependencies := rec(
  GAP := ">=4.8",
  NeededOtherPackages := [ [ "automata", ">= 1.13" ], 
                           [ "GAPDoc", ">= 1.5.1" ]  ],
  SuggestedOtherPackages := [ [ "kbmag", ">= 1.5" ] ],
  ExternalConditions := [ ]
),

AvailabilityTest := ReturnTrue,

BannerString := Concatenation( 
    "Loading Kan ", String( ~.Version ), " for GAP 4.8", 
    " - Anne Heyworth and Chris Wensley ...\n" ),

TestFile := "tst/testall.g",

Keywords := [ "Kan extension", 
              "double coset rewriting system", 
              "induced action" ]

));
