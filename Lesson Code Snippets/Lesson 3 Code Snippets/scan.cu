/* FILL UP THE ORIGINAL WITH SCAN PARALLEL ALGORITHM */

/* SCAN HAS 2 VERSIONS: INCLUSIVE & EXCLUSIVE */

/* I. serial one */
// 1.inclusive
int acc = identity;
for (int i = 0; i < element.size(); i++) {
  acc = acc op element[i]
  out[i] = acc;
}

// 2.exclusive
for (int i = 0; i < element.size(); i++) {
  out[i] = acc;
  acc = acc op element[i];
}

// StepComplexity: look at the end element
// steps complexity: O(logn)
// work complexity: O(n^2)

/* II. parallel one */
// 1.Hills & Steele
// suprior step efficiency

// steps complexity: O(logn)
// work complexity: O(nlogn)


// 2.Blelloch
// suprior work efficiency

// a.reduce
// steps complexity: O(logn)
// work complexity: O(n)

// b.downsweep
// steps complexity: O(logn)
// work complexity: O(n)

// total steps complexity: O(2logn)
// work complexity: O(n)
