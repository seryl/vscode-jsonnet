{
  property1: foo,
  property2: 2,
  local foo = 3,
  local baz = bar.baz,
  local bar = {baz: 3},
  local merged1 = {a: 1, b: 2} + {b: 3, c: 4},
  local merged2 = merged1 + {a: 99},
  local merged3 = {a: 99} + merged1,
  local merged4 = merged1 + merged2,
  useMerged: [merged1.b, merged2.a, merged3.a, merged4.a],
  local nestedMerge1 = {merged1: merged1},
  local nestedMerge2 = {merged2: merged2},
  local nestedMerge3 = nestedMerge1.merged1 + nestedMerge2.merged2,
  useMerged2: nestedMerge3.a,
  local numberVal1 = 1,
  local numberVal2 = numberVal1,
  number: numberVal2,
}