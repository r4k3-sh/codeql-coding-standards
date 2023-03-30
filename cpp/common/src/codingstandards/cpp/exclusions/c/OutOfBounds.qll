//** THIS FILE IS AUTOGENERATED, DO NOT MODIFY DIRECTLY.  **/
import cpp
import RuleMetadata
import codingstandards.cpp.exclusions.RuleMetadata

newtype OutOfBoundsQuery =
  TDoNotFormOutOfBoundsPointersOrArraySubscriptsQuery() or
  TLibraryFunctionArgumentOutOfBoundsQuery() or
  TStringFunctionPointerArgumentOutOfBoundsQuery() or
  TStringLibrarySizeArgumentOutOfBoundsQuery()

predicate isOutOfBoundsQueryMetadata(Query query, string queryId, string ruleId, string category) {
  query =
    // `Query` instance for the `doNotFormOutOfBoundsPointersOrArraySubscripts` query
    OutOfBoundsPackage::doNotFormOutOfBoundsPointersOrArraySubscriptsQuery() and
  queryId =
    // `@id` for the `doNotFormOutOfBoundsPointersOrArraySubscripts` query
    "c/cert/do-not-form-out-of-bounds-pointers-or-array-subscripts" and
  ruleId = "ARR30-C" and
  category = "rule"
  or
  query =
    // `Query` instance for the `libraryFunctionArgumentOutOfBounds` query
    OutOfBoundsPackage::libraryFunctionArgumentOutOfBoundsQuery() and
  queryId =
    // `@id` for the `libraryFunctionArgumentOutOfBounds` query
    "c/cert/library-function-argument-out-of-bounds" and
  ruleId = "ARR38-C" and
  category = "rule"
  or
  query =
    // `Query` instance for the `stringFunctionPointerArgumentOutOfBounds` query
    OutOfBoundsPackage::stringFunctionPointerArgumentOutOfBoundsQuery() and
  queryId =
    // `@id` for the `stringFunctionPointerArgumentOutOfBounds` query
    "c/misra/string-function-pointer-argument-out-of-bounds" and
  ruleId = "RULE-21-17" and
  category = "mandatory"
  or
  query =
    // `Query` instance for the `stringLibrarySizeArgumentOutOfBounds` query
    OutOfBoundsPackage::stringLibrarySizeArgumentOutOfBoundsQuery() and
  queryId =
    // `@id` for the `stringLibrarySizeArgumentOutOfBounds` query
    "c/misra/string-library-size-argument-out-of-bounds" and
  ruleId = "RULE-21-18" and
  category = "mandatory"
}

module OutOfBoundsPackage {
  Query doNotFormOutOfBoundsPointersOrArraySubscriptsQuery() {
    //autogenerate `Query` type
    result =
      // `Query` type for `doNotFormOutOfBoundsPointersOrArraySubscripts` query
      TQueryC(TOutOfBoundsPackageQuery(TDoNotFormOutOfBoundsPointersOrArraySubscriptsQuery()))
  }

  Query libraryFunctionArgumentOutOfBoundsQuery() {
    //autogenerate `Query` type
    result =
      // `Query` type for `libraryFunctionArgumentOutOfBounds` query
      TQueryC(TOutOfBoundsPackageQuery(TLibraryFunctionArgumentOutOfBoundsQuery()))
  }

  Query stringFunctionPointerArgumentOutOfBoundsQuery() {
    //autogenerate `Query` type
    result =
      // `Query` type for `stringFunctionPointerArgumentOutOfBounds` query
      TQueryC(TOutOfBoundsPackageQuery(TStringFunctionPointerArgumentOutOfBoundsQuery()))
  }

  Query stringLibrarySizeArgumentOutOfBoundsQuery() {
    //autogenerate `Query` type
    result =
      // `Query` type for `stringLibrarySizeArgumentOutOfBounds` query
      TQueryC(TOutOfBoundsPackageQuery(TStringLibrarySizeArgumentOutOfBoundsQuery()))
  }
}
