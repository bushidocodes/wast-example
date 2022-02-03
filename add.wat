(module
	(func $add (param $a i32) (param $b i32) (result i32)
		(i32.add (local.get $a) (local.get $b))	
	)

	(func (export "_start") (result i32)
		(if (result i32) (i32.eq (call $add (i32.const 1) (i32.const 1)) (i32.const 2))
			(then (i32.const 0))
			(else (i32.const 1))
		)
	)
)
