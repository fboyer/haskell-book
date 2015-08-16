{-
Combinators - Determine if each of the following are combinators or not.

Note to self: Combinators are basically lambda expressions with no free
variables which means that if all variables in the body are represented in the
head then it is a combinator.

1. λx.xxx
-> Yes
2. λxy.zx
-> No
3. λxyz.xy(zx)
-> Yes
4. λxyz.xy(zxy)
-> Yes
5. λxy.xy(zxy)
-> No

Normal form or diverge? - Determine if each of the following can be reduced to a
normal form or if they diverge.

Explanation: Normal form means that the lambda expressions can be reduced to a
certain extent meaning that it converges to a reduced beta normal form while
lambda expressions will diverge if this reduction process never converges or
ends.

1. λx.xxx
-> xxx
-> Normal form
2. (λz.zz)(λy.yy)
-> (λ[z := λy.yy].zz)
-> (λ[z := λy.yy].(λy.yy)(λy.yy))
-> (λy.yy)(λy.yy)
-> Diverge
3. (λx.xxx)z
-> (λ[x := z].xxx)
-> (λ[x := z].zzz)
-> zzz
-> Normal form

Beta reduce - Evaluate (that is, beta reduce) each of the following expressions
to normal form. We strongly recommend writing out the steps on paper with a
pencil or pen.

1. (λabc.cba)zz(λwv.w)
-> (λa.λb.λc.cba)zz(λw.λv.w)
-> (λb.λc.cbz)z(λw.λv.w)
-> (λc.czz)(λw.λv.w)
-> (λw.λv.w)zz
-> (λv.z)z
-> z
2. (λx.λy.xyy)(λa.a)b
-> (λy.(λa.a)yy)b
-> (λa.a)bb
-> bb
3. (λy.y)(λx.xx)(λz.zq)
-> (λx.xx)(λz.zq)
-> (λz.zq)(λz.zq)
-> (λz.zq)q
-> qq
4. (λz.z)(λz.zz)(λz.zy) Hint: alpha equivalence.
-> (λz.zz)(λz.zy)
-> (λz.zy)(λz.zy)
-> (λz.zy)y
-> yy
5. (λx.λy.xyy)(λy.y)y
-> (λy.(λy.y)yy)y
-> (λy.y)yy
-> yy
6. (λa.aa)(λb.ba)c
-> (λb.ba)(λb.ba)c
-> ((λb.ba)a)c
-> (aa)c
-> aac
7. (λxyz.xz(yz))(λx.z)(λx.a)
-> (λx.λy.λz.xz(yz))(λx.z)(λx.a)
-> (λy.λz.(λx.z)z(yz))(λx.a)
-> (λz.(λx.z)z((λx.a)z))
-> λz.z(a)
Note to self: This last one might look a bit tricky but the important thing to
remember is to apply the beta reduction process as is meaning to reduce the
leftmost outermost lambdas first and then the terms nested within after you've
ran out of arguments to apply.
-}
